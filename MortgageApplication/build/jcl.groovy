JCLExec exec = new JCLExec()
exec.confDir('/usr/lpp/IBM/dbb/conf')
def rc = exec.dataset('CBS.ZCON.JCL').member('CBSLOG').execute()
println "Job '${exec.getSubmittedJobId()}' was submitted successfully with maxRC = ${exec.maxRC}"
exec.getAllDDNames().each({ ddName ->
    println "DD Name: $ddName"
    def file = new File("/u/IBMUSER/sample/${ddName}.output")
    exec.saveOutput(ddName, file, null)
})
