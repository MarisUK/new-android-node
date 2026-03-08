plugins {
    kotlin("jvm") version "1.8.21"
    java
}

repositories {
    google()
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    // Jaunaiknes uz java atbalstu
    testImplementation("org.junit.jupiter:junit-jupiter:5.9.3")
}

// Apstrāde, lai izslēgtu depreceācijas brīdinājumus
configurations.all {
  resolutionStrategy.dependencySubstitution.all { 
    useTarget module("java-api").because("Replacing deprecated Java Usages")
  }
  resolutionStrategy.dependencySubstitution.all { 
    useTarget module("java-runtime").because("Replacing deprecated Java Runtime Usages")
  }
}

tasks.test {
    useJUnitPlatform()
}
