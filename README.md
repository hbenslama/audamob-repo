maven-repo
==========

my humble maven repository

for snapshots use:
--
    http://hakandilek.github.com/maven-repo/snapshots/

for releases use:
---
    http://hakandilek.github.com/maven-repo/releases/

with maven:
----
    <repositories>
		<repository>
			<id>hakandilek-maven-repo-snapshots</id>
			<url>http://hakandilek.github.com/maven-repo/snapshots/</url>
			<releases>
				<enabled>false</enabled>
			</releases>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</repository>
        <repository>
            <id>hakandilek-maven-repo-releases</id>
            <url>http://hakandilek.github.com/maven-repo/releases/</url>
            <releases>
                <enabled>true</enabled>
            </releases>
            <snapshots>
                <enabled>false</enabled>
            </snapshots>
        </repository>
	</repositories>

with play framework 2.0:
----

    val main = PlayProject(appName, appVersion, appDependencies, mainLang = JAVA).settings(
        resolvers += "release repository" at  "http://hakandilek.github.com/maven-repo/releases/",
        resolvers += "snapshot repository" at "http://hakandilek.github.com/maven-repo/snapshots/"
    )

with play framework 2.1:
----

    val main = play.Project(appName, appVersion, appDependencies).settings (
        resolvers += "release repository" at  "http://hakandilek.github.com/maven-repo/releases/",
        resolvers += "snapshot repository" at "http://hakandilek.github.com/maven-repo/snapshots/"
    )

have fun!
