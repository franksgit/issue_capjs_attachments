Test with https://www.npmjs.com/package/@cap-js/attachments 2.1.2

Issue when entity that contains a composition of the Attachments is having a key differently named than ID

Note that the issue only occurs once you bind the service to an instanace of the objectstore

Replicate by:
    npm i
    cds deploy
    cds bind attachment -2 <service name of objectstore>:<key maintained there>

    cds watch --profile hybrid

using the notworking_AdminService.http
    # @name Books_Draft_POST
    # @name Books_draft_DELETE

        "message": "\"up__ID\" not found in the elements of \"AdminService.Books.attachments.drafts\""

[cds] - Error: "up__ID" not found in the elements of "AdminService.Books.attachments.drafts"
    at stepNotFoundInCombinedElements (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:794:13)
    at /home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:501:11
    at Array.forEach (<anonymous>)
    at inferArg (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:441:13)
    at processToken (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:307:11)
    at Array.forEach (<anonymous>)
    at walkTokenStream (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:311:19)
    at inferQueryElements (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:280:16)
    at infer (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/infer/index.js:71:22)
    at cqn4sql (/home/user/projects/00_test/00_test/node_modules/@cap-js/db-service/lib/cqn4sql.js:80:14)

If you do the same with the service running local:
cds watch

using the notworking_AdminService.http
    # @name Books_Draft_POST
    # @name Books_draft_DELETE

all does work

Alternatively using the service Books_ID that has a key names ID it does work either locally or in hybrid mode

test/http/working_AdminService.http
    # @name Books_ID_Draft_POST
    # @name Books_ID_draft_DELETE

    => no error

