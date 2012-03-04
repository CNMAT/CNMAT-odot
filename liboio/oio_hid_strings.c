#include "oio_hid_strings.h"
#include "oio_obj.h"
#include "oio_hid.h"

CFStringRef oio_hid_strings_getCookieString(t_oio *oio, int32_t vid, int32_t pid, uint32_t cookie){
	if(vid < 0 || pid < 0){
		return NULL;
	}
	t_oio_hid *hid = oio->hid;
	CFDictionaryRef csdict = hid->cookie_strings_dict;
	CFStringRef vid_s, pid_s, cookie_s;
	CFStringRef cookie_string = NULL;
	char buf[128];
	sprintf(buf, "%u", vid);
	vid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);
	sprintf(buf, "%u", pid);
	pid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);
	sprintf(buf, "%u", cookie);
	cookie_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);

	CFDictionaryRef vid_dict = CFDictionaryGetValue(csdict, vid_s);
	if(vid_dict){
		CFDictionaryRef pid_dict = CFDictionaryGetValue(vid_dict, pid_s);
		if(pid_dict){
			cookie_string = CFDictionaryGetValue(pid_dict, cookie_s);
		}
	}
	CFRelease(vid_s);
	CFRelease(pid_s);
	CFRelease(cookie_s);
	return cookie_string;
}

uint32_t oio_hid_strings_getCookie(t_oio *oio, int32_t vid, int32_t pid, char *cookie_string){
	if(vid < 0 || pid < 0){
		return -1;
	}
	t_oio_hid *hid = oio->hid;
	CFDictionaryRef csdict = hid->cookie_strings_dict;
	CFStringRef vid_s, pid_s, cookie_s;
	CFStringRef cookie = NULL;
	char buf[128];
	sprintf(buf, "%u", vid);
	vid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);
	sprintf(buf, "%u", pid);
	pid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);
	cookie_s = CFStringCreateWithCString(kCFAllocatorDefault, cookie_string, kCFStringEncodingUTF8);

	CFDictionaryRef vid_dict = CFDictionaryGetValue(csdict, vid_s);
	if(vid_dict){
		CFDictionaryRef pid_dict = CFDictionaryGetValue(vid_dict, pid_s);
		if(pid_dict){
			cookie = CFDictionaryGetValue(pid_dict, cookie_s);
		}
	}
	CFRelease(vid_s);
	CFRelease(pid_s);
	CFRelease(cookie_s);
	if(cookie){
		return CFStringGetIntValue(cookie);
	}else{
		return -1;
	}
}

CFStringRef oio_hid_strings_getDeviceNameString(t_oio *oio, int32_t vid, int32_t pid){
	if(vid < 0 || pid < 0){
		return NULL;
	}
	t_oio_hid *hid = oio->hid;
	CFDictionaryRef csdict = hid->cookie_strings_dict;
	CFStringRef vid_s, pid_s;
	CFStringRef device_name_string;
	char buf[128];
	sprintf(buf, "%u", vid);
	vid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);
	sprintf(buf, "%u", pid);
	pid_s = CFStringCreateWithCString(kCFAllocatorDefault, buf, kCFStringEncodingUTF8);

	CFDictionaryRef vid_dict = CFDictionaryGetValue(csdict, vid_s);
	if(vid_dict){
		//PP("Got vid_dict");
		CFDictionaryRef pid_dict = CFDictionaryGetValue(vid_dict, pid_s);
		if(pid_dict){
			//PP("Got pid_dict");
			device_name_string = CFDictionaryGetValue(pid_dict, CFSTR("name"));
		}
	}
	CFRelease(vid_s);
	CFRelease(pid_s);
	return device_name_string;
}

CFStringRef oio_hid_strings_getUsagePageString(t_oio *oio, uint32_t usage_page){
	if(!(oio->hid->usage_pages_dict)){
		return NULL;
	}
	CFNumberRef up = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &usage_page);
	CFStringRef val = NULL;
	if(CFDictionaryContainsKey(oio->hid->usage_pages_dict, up)){
		 val = CFDictionaryGetValue(oio->hid->usage_pages_dict, up);
	}
	CFRelease(up);
	return val;
}

uint32_t oio_hid_strings_getUsagePage(t_oio *oio, char *usage_page){
	CFStringRef up = CFStringCreateWithCString(kCFAllocatorDefault, usage_page, kCFStringEncodingUTF8);
	CFNumberRef val = NULL;
	if(CFDictionaryContainsKey(oio->hid->usage_pages_dict, up)){
		val = CFDictionaryGetValue(oio->hid->usage_pages_dict, up);
	}
	CFRelease(up);
	int32_t v;
	CFNumberGetValue(val, kCFNumberSInt32Type, &v);
	return v;
}

CFStringRef oio_hid_strings_getUsageString(t_oio *oio, uint32_t usage_page, uint32_t usage){
	if(!(oio->hid->usage_dict)){
		return NULL;
	}
	CFNumberRef up = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &usage_page);
	CFNumberRef u = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &usage);
	CFDictionaryRef usage_page_dict = NULL;
	CFStringRef usage_string = NULL;
	if(CFDictionaryContainsKey(oio->hid->usage_dict, up)){
		usage_page_dict = CFDictionaryGetValue(oio->hid->usage_dict, up);
		if(CFDictionaryContainsKey(usage_page_dict, u)){
			usage_string = CFDictionaryGetValue(usage_page_dict, u);
		}
	}

	CFRelease(up);
	CFRelease(u);
	return usage_string;
}

t_oio_err oio_hid_strings_readUsageFile(t_oio *oio, char *filename){
	// This is some serious CFNastiness...
	// We want a dictionary that will allow us to look up the usage page string for the usage page, and vice versa
	// Then we want a dictionary that will allow us to get the contents of that page (another dictionary) using the usage page (number)
	CFDictionaryRef plist = (CFDictionaryRef)oio_obj_getPlist(filename);
	int i, j;
	int plist_count = CFDictionaryGetCount(plist);
	const void *k[plist_count], *v[plist_count];
	CFDictionaryGetKeysAndValues(plist, k, v);
	char buf[32];
	CFDictionaryRef dictarray[plist_count];
	CFNumberRef usage_pages[plist_count];
	CFTypeRef keys[plist_count * 2], values[plist_count * 2];
	for(i = 0; i < plist_count; i++){
		CFStringGetCString((CFStringRef)k[i], buf, 32, kCFStringEncodingUTF8);
		unsigned long usage_page = strtoul(buf, NULL, 0);
		CFNumberRef up = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &usage_page);
		usage_pages[i] = up;
		CFDictionaryRef usage_page_dict = (CFDictionaryRef)v[i];
		int n = CFDictionaryGetCount(usage_page_dict);
		const void *kk[n], *vv[n];
		CFNumberRef usage[n - 1];
		CFStringRef strings[n - 1];
		CFDictionaryGetKeysAndValues(usage_page_dict, kk, vv);
		int k = 0;
		for(j = 0; j < n; j++){
			if(CFStringCompare(kk[j], CFSTR("Name"), 0) == 0){
				keys[i * 2] = (CFTypeRef)up;
				values[i * 2] = (CFTypeRef)vv[j];
				keys[i * 2 + 1] = (CFTypeRef)vv[j];
				values[i * 2 + 1] = (CFTypeRef)up;
			}else{
				CFStringGetCString((CFStringRef)kk[j], buf, 32, kCFStringEncodingUTF8);
				unsigned long l = strtoul(buf, NULL, 0);
				usage[k] = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &l);
				strings[k++] = CFStringCreateCopy(kCFAllocatorDefault, vv[j]);
			}
		}
		CFRelease(up);
		dictarray[i] = CFDictionaryCreate(kCFAllocatorDefault, (const void **)usage, (const void **)strings, n - 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	}

	if(oio->hid->usage_pages_dict){
		CFRelease(oio->hid->usage_pages_dict);
	}
	oio->hid->usage_pages_dict = CFDictionaryCreate(kCFAllocatorDefault, (const void **)keys, (const void **)values, plist_count * 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	if(oio->hid->usage_dict){
		CFRelease(oio->hid->usage_dict);
	}
	oio->hid->usage_dict = CFDictionaryCreate(kCFAllocatorDefault, (const void **)usage_pages, (const void **)dictarray, plist_count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);

	CFRelease(plist);
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_strings_readCookieFile(t_oio *oio, char *filename){
	CFDictionaryRef plist = (CFDictionaryRef)oio_obj_getPlist(filename);
	int i;
	int plist_count = CFDictionaryGetCount(plist);
	const void *k[plist_count], *v[plist_count];
	CFDictionaryGetKeysAndValues(plist, k, v);
	for(i = 0; i < plist_count; i++){
		CFDictionaryAddValue(oio->hid->cookie_strings_dict, k[i], v[i]);
	}
	return OIO_ERR_NONE;
}
