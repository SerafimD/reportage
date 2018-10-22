require 'reportage'

# Generate PDF
rep = Reportage.new
rep.add [0, 1, 2]
rep.to_pdf 'examples/output/simple.pdf'

#Generate XLS
rep = Reportage.new
rep << [0, 1, 2]
rep.to_xls 'examples/output/out.xls'

# Generate complicated PDF
rep = Reportage.new
rep.add 'Hello world' * 100
rep.add [1, 2, 3] * 3
rep.add({a: 1, b: 2})
rep.to_pdf 'examples/output/complicated.pdf'

# Generate complicated PDF
rep = Reportage.new
rep.add({a: 1, b: 2, c: {
    application: 'app',
    resource: 'resource_with_postfix',
    action: 'action',
    params: {
        id: 'id',
        system_code: {
            application: 'app',
            resource: 'resource_with_postfix',
            action: 'action',
            params: {
                id: 'id',
                system_code: {
                    application: 'app',
                    resource: 'resource_with_postfix',
                    action: 'action',
                    params: {
                        id: 'id',
                        system_code: {
                            application: 'app',
                            resource: 'resource_with_postfix',
                            action: 'action',
                            params: {
                                id: 'id',
                                system_code: {
                                    application: 'app',
                                    resource: 'resource_with_postfix',
                                    action: 'action',
                                    params: {
                                        id: 'id',
                                        system_code: {
                                            application: 'app',
                                            resource: 'resource_with_postfix',
                                            action: 'action',
                                            params: {
                                                id: 'id',
                                                system_code: {
                                                    application: 'app',
                                                    resource: 'resource_with_postfix',
                                                    action: 'action',
                                                    params: {
                                                        id: 'id',
                                                        system_code: {
                                                            application: 'app',
                                                            resource: 'resource_with_postfix',
                                                            action: 'action',
                                                            params: {
                                                                id: 'id',
                                                                system_code: 'system_code',
                                                                declined: true
                                                            }},
                                                        declined: true
                                                    }},
                                                declined: true
                                            }},
                                        declined: true
                                    }},
                                declined: true
                            }},
                        declined: true
                    }},
                declined: true
            }},
        declined: true
    }}})
rep << 'Simple string'
rep.to_pdf 'examples/output/complicated_ext.pdf'


