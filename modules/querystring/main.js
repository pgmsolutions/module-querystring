window.PageQuery = new class {
    initialize(){
        RPGM.on('didReceiveMessage', (message, data)=>{
            if(message === 'queryString/get'){
                const q = {};
                const paramsString = new URLSearchParams(window.location.search);
                for (const [key, value] of paramsString) {
                    q[key] = value;
                }
                RPGM.sendMessage('r', 'querystring', {query: q});
                return;
            }
        });
        RPGM.on('didEnterStep', ()=>{
            const q = {};
            const paramsString = new URLSearchParams(window.location.search);
            for (const [key, value] of paramsString) {
                q[key] = value;
            }
            RPGM.sendMessage('r', 'querystring', {query: q});
        });
    }
}
PageQuery.initialize();