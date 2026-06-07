allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.google.gms:google-services:4.4.0")
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)

    // Force a modern AppCompat version across every module (including plugin
    // modules like shared_preferences_android). The old appcompat 1.1.0 pulled
    // in transitively is missing Material resources and fails
    // verifyReleaseResources during release builds.
    configurations.all {
        resolutionStrategy {
            force("androidx.appcompat:appcompat:1.6.1")
        }
    }

    // Fix for telephony plugin namespace issue
    afterEvaluate {
        if (project.name == "telephony") {
            extensions.findByType<com.android.build.gradle.LibraryExtension>()?.apply {
                namespace = "com.shounakmulay.telephony"
            }
        }
    }
}
subprojects {
    project.evaluationDependsOn(":app")
}

subprojects {
    afterEvaluate {
        val androidExtension = extensions.findByType<com.android.build.gradle.BaseExtension>()
        if (androidExtension != null) {
            androidExtension.compileOptions {
                sourceCompatibility = JavaVersion.VERSION_17
                targetCompatibility = JavaVersion.VERSION_17
            }
        }
        tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
            compilerOptions {
                jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
