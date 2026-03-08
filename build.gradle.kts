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
        useTarget(module("java-api")).because("Replacing deprecated Java Usages")
    }
    resolutionStrategy.dependencySubstitution.all { 
        useTarget(module("java-runtime")).because("Replacing deprecated Java Runtime Usages")
    }
}

tasks.test {
    useJUnitPlatform()
}
