@Library('libpipelines@master') _

hose {
    EMAIL = 'qa'
    SLACKTEAM = 'stratioqa'
    MODULE = 'paasuniAT'
    REPOSITORY = 'paas-universe-at'
    
    ATTIMEOUT = 10
    
    ATSERVICES = [
            ['DCOSCLI':   ['image': 'stratio/dcos-cli:0.4.14',
			   'volumes': ["PaasIntegrationPem:0.1.0"],
                           'env':     ['DCOS_URL=https://10.200.0.205',
                                      'SSH=true',
                                      'TOKEN_AUTHENTICATION=true',
                                      'DCOS_USER=admin@demo.stratio.com',
                                      'DCOS_PASSWORD=stratiotest',
                                      'REMOTE_USER=operador',
                                      'PEM_FILE_PATH=/PaasIntegration.pem',
			              'MASTER_MESOS=10.200.0.205'],
                           'sleep':  10]]
        ]

    ATPARAMETERS = """
                    | -DDCOS_CLI_HOST=%%DCOSCLI#0
                    | -DPAAS_UNIVERSE_VERSION=0.4.0-SNAPSHOT
                    | """.stripMargin().stripIndent()

    AT = { config ->
        doAT(conf: config, groups: ['universe','removeUniverse'])
    }
}
