type Feature = {

}

type Markdown = any

type Version = {
    ver: string,
    desc: string,
    over: {
        add: string,
        del: string
    },
    fea: Feature | Markdown
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

var a = "aaa"

const a1 = {
    [a]: 5
}

type b = { [str: string]: {a: number} }

type d = typeof a1
