@Library('libpipelines@master') _

hose {
    EMAIL = 'qa'
    SLACKTEAM = 'stratioqa'
    MODULE = 'paasuniAT'
    
    ATTIMEOUT = 30
    
    ATSERVICES = [
            ['DCOSCLI':   ['image': 'stratio/dcos-cli:0.4.14',
                           'env':    ['DCOS_URL=http://10.200.1.221',
                                      'SSH=true',
                                      'TOKEN_AUTHENTICATION=true',
                                      'DCOS_USER=admin@demo.stratio.com',
                                      'DCOS_PASSWORD=stratiotest',
                                      'REMOTE_USER=root',
                                      'REMOTE_PASSWORD=stratio',
                                      'MASTER_MESOS=10.200.1.221'],
                           'sleep':  10]]
        ]

    ATPARAMETERS = """
                    | -DDCOS_CLI_HOST=%%DCOSCLI#0
                    | -DDCOS_CLI_USER=root
                    | -DDCOS_CLI_PASSWORD=stratio
                    | -DPAAS_UNIVERSE_NAME=PaaS
                    | -DPAAS_UNIVERSE_PRIORITY=0
                    | -DPAAS_UNIVERSE_PATH=http://sodio.stratio.com/nexus/content/sites/paas/universe/0.3.0-SNAPSHOT/stratio-paas-universe-0.3.0-SNAPSHOT.zip
                    | """.stripMargin().stripIndent()

    AT = { config ->
        doAT(conf: config, groups: ['universe'])
    }
}
