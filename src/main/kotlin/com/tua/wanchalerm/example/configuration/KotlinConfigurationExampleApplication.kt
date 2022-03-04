package com.tua.wanchalerm.example.configuration

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.config.server.EnableConfigServer

@EnableConfigServer
@SpringBootApplication
class KotlinConfigurationExampleApplication

fun main(args: Array<String>) {
	runApplication<KotlinConfigurationExampleApplication>(*args)
}
