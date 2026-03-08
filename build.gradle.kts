plugins {
    id("com.android.application") version "8.2.2" apply false
    id("com.android.library") version "8.2.2" apply false
    id("org.jetbrains.kotlin.android") version "1.9.22" apply false
}

repositories {
    google()
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("org.junit.jupiter:junit-jupiter:5.9.3")
}

configurations.all {
    resolutionStrategy.dependencySubstitution.all {
        if (requested.module.group == "org.gradle") {
            useTarget("latest.release")
            because("Replacement with latest version due to deprecation.")
        }
    }
}

tasks.test {
    useJUnitPlatform()
}
