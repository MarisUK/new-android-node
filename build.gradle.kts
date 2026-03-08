plugins {
    kotlin("jvm") version "1.8.21" 
}

repositories {
    mavenCentral()
    google()
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("org.junit.jupiter:junit-jupiter:5.9.3")
}

val test by tasks.getting(Test::class) {
    useJUnitPlatform()
}

configurations.all {
    resolutionStrategy.eachDependency { details ->
        if (details.requested.group == "org.gradle") {
            details.useVersion("latest.release")
            details.because("Replacement with latest version due to deprecation.")
        }
    }
}
