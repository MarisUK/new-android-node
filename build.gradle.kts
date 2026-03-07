plugins {
    kotlin("jvm") version "1.7.10"
    id("com.android.application") version "8.0.0" // Atjaunināta versija, saderīga ar Gradle 9.x
}

repositories {
    google()
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
}
