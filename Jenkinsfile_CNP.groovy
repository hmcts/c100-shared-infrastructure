#!groovy
//noinspection GroovyUnusedAssignment
@Library("Infrastructure") _

def product = "c100"

withInfraPipeline(product) {
}

