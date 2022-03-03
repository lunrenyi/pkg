type Feature = {

}

type Markdown = any

type Version = {
    ver: string,
    desc?: string,
    lic?: string,
    over: {
        add: string,
        del: string
    },
    fea: Feature | Markdown,
    sb: {
        [name: string]: {
            md5: string,
            sha512: string
        }
    }
}

type Config = {
    name:   string,
    desc:   string,
    home:   string,
    lic:    string,
    arch:   {
        [name: string]: {
            url: string,
            md5: string,
            sha512: string
        }
    }
}

/*
Where is URL?
-- Most distribution will be in our repo. So url is fixed.
-- If this could not be redistributed, we will override the script

Where is checkversion?
-- Version will be maintained by static-build community.
-- The actual checkversion facility will be used by maintainer, not user.
*/
