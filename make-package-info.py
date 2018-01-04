import json, os, subprocess, platform

print "************************************************"

#packagedirs=(clippings code default-definitions default-settings docs examples extensions externals extras help init interfaces java-classes java-doc javascript jsextensions jsui license.txt media misc patchers object-prototypes queries readme.txt source support templates)


def filesinfolder(n):
    return [f for f in os.listdir(n) if not f.startswith('.')]

with open('default-package-info.json', 'r') as f:
    pinfo = json.load(f)

    # update the package listings
    if (platform.system() == 'Darwin'):
        pinfo['filelist']['externals'] = filesinfolder("externals")
    else:
        pinfo['filelist']['externals'] = os.listdir("src/build/Release")

    pinfo['filelist']['help'] = filesinfolder("help")
    pinfo['filelist']['misc'] = filesinfolder("misc")
    pinfo['filelist']['default-definitions'] = filesinfolder("default-definitions")
    pinfo['filelist']['docs'] = filesinfolder("docs")
    pinfo['filelist']['examples'] = filesinfolder("examples")
    pinfo['filelist']['extras'] = filesinfolder("extras/odot-extras")
    pinfo['filelist']['init'] = filesinfolder("init")
    pinfo['filelist']['interfaces'] = filesinfolder("interfaces")
    pinfo['filelist']['clippings'] = filesinfolder("clippings")
    pinfo['filelist']['patchers'] = filesinfolder("patchers")

    version = subprocess.check_output("git describe --tags --long", shell=True).strip()
    branch = subprocess.check_output("git branch | egrep '^\*' | awk '{print $2}'", shell=True).strip()
    pinfo['version'] = version+"-"+branch

    with open('package-info.json', 'w') as outf:
        json.dump(pinfo, outf, indent=4)
