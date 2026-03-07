plugins {
    kotlin("jvm") version "1.8.10"
    java
}

repositories {
    google()
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
}

// Neizmantot eksplicitā "SelfResolvingDependency"
configurations.all {
    resolutionStrategy.force("org.jetbrains.kotlin:kotlin-stdlib-jdk8:1.5.31")
}
