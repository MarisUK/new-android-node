plugins {
    kotlin("jvm") version "1.8.21" // Atjaunināta uz pieejamu Kotlin versiju
    java
}

repositories {
    google()
    mavenCentral()
    // Ja nepieciešams, var pievienot vēl citas krātuves te
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("org.junit.jupiter:junit-jupiter:5.9.3")
}

tasks.test {
    useJUnitPlatform()
}