import json, os, subprocess

print "************************************************"

#packagedirs=(clippings code default-definitions default-settings docs examples extensions externals extras help init interfaces java-classes java-doc javascript jsextensions jsui license.txt media misc patchers object-prototypes queries readme.txt source support templates)


with open('default-package-info.json', 'r') as f:
    pinfo = json.load(f)

    # update the package listings
    pinfo['filelist']['externals'] = os.listdir("src/build/Release")
    pinfo['filelist']['help'] = os.listdir("help")
    pinfo['filelist']['misc'] = os.listdir("misc")
    pinfo['filelist']['default-definitions'] = os.listdir("default-definitions")
    pinfo['filelist']['docs'] = os.listdir("docs")
    pinfo['filelist']['examples'] = os.listdir("examples")
    pinfo['filelist']['init'] = os.listdir("init")
    pinfo['filelist']['interfaces'] = os.listdir("interfaces")
    pinfo['filelist']['clippings'] = os.listdir("clippings")
    pinfo['filelist']['patchers'] = os.listdir("patchers")

    version = subprocess.check_output("git describe --tags --long", shell=True).strip()
    branch = subprocess.check_output("git branch | egrep '^\*' | awk '{print $2}'", shell=True).strip()
    pinfo['version'] = version+"-"+branch

    with open('package-info.json', 'w') as outf:
        json.dump(pinfo, outf, indent=4)
