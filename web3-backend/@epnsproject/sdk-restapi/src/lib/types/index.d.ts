export declare type ApiNotificationType = {
    "payload_id": number;
    "channel": string;
    "epoch": string;
    "payload": {
        "apns": {
            "payload": {
                "aps": {
                    "category": string;
                    "mutable-content": number;
                    "content-available": number;
                };
            };
            "fcm_options": {
                "image": string;
            };
        };
        "data": {
            "app": string;
            "sid": string;
            "url": string;
            "acta": string;
            "aimg": string;
            "amsg": string;
            "asub": string;
            "icon": string;
            "type": string;
            "epoch": string;
            "appbot": string;
            "hidden": string;
            "secret": string;
        };
        "android": {
            "notification": {
                "icon": string;
                "color": string;
                "image": string;
                "default_vibrate_timings": boolean;
            };
        };
        "notification": {
            "body": string;
            "title": string;
        };
    };
    "source": string;
};
export declare type ParsedResponseType = {
    cta: string;
    title: string;
    message: string;
    icon: string;
    url: string;
    sid: string;
    app: string;
    image: string;
    blockchain: string;
    secret: string;
    notification: {
        title: string;
        body: string;
    };
};
export interface ISendNotificationInputOptions {
    signer: any;
    type: number;
    identityType: number;
    notification?: {
        title: string;
        body: string;
    };
    payload?: {
        sectype?: string;
        title: string;
        body: string;
        cta: string;
        img: string;
    };
    recipients?: string | string[];
    channel: string;
    expiry?: number;
    hidden?: boolean;
    graph?: {
        id: string;
        counter: number;
    };
    ipfsHash?: string;
    env?: string;
}
export interface INotificationPayload {
    notification: {
        title: string;
        body: string;
    };
    data: {
        acta: string;
        aimg: string;
        amsg: string;
        asub: string;
        type: string;
        etime?: number;
        hidden?: boolean;
        sectype?: string;
    };
    recipients: any;
}
