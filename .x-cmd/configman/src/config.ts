type Feature = {

}

type Markdown = any

type Version = {
    ver: string,
    desc: string,
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
    },
    bin: string[],
    checkver: {
        url: string
    },
    hook: {
        pre: {
            script: string
        },
        post: {
            script: string
        }
    }
    
}
