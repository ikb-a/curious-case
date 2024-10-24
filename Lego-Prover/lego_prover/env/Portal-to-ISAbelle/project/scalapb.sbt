// addSbtPlugin("com.thesamet" % "sbt-protoc" % "0.99.6")  VERSOIN PROBLEMS
//addSbtPlugin("com.thesamet" % "sbt-protoc")   DID NOT WORK; type error in expression

//libraryDependencies += "com.trueaccord.scalapb" %% "compilerplugin" % "0.6.0-pre3" VERSION PROBLEMS
//libraryDependencies += "com.trueaccord.scalapb" %% "compilerplugin"   DID NOT WORK; type error in expression

// Looks promising: https://mvnrepository.com/artifact/com.thesamet.scalapb


// Try this thing, though it seems to want a different convention:
// https://github.com/thesamet/sbt-protoc
//addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.7")

//libraryDependencies += "com.thesamet.scalapb" %% "compilerplugin" % "0.10.10"


// When in doubt, try, try again! https://github.com/scalapb/zio-grpc/blob/master/examples/fullapp/project/plugins.sbt
/*
addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.7")

val zioGrpcVersion = "0.6.2"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
    "com.thesamet.scalapb" %% "compilerplugin" % "0.11.15"
    )
*/
// produced a bunch of deprecation warnings

// Sept 2022
/*
addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.6")

val zioGrpcVersion = "0.6.0-test2"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
    "com.thesamet.scalapb" %% "compilerplugin" % "0.11.7"
    )
*/

// May 2021
// https://github.com/scalapb/zio-grpc/blob/28af513377f3b6428306f64b50240bf9224391b4/examples/fullapp/project/plugins.sbt
/*
addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.2")

val zioGrpcVersion = "0.5.0"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
    "com.thesamet.scalapb" %% "compilerplugin" % "0.11.1"
    )
*/
// Still producing deprecation warnings.
// Okay, stick with newest then: 
// https://github.com/scalapb/zio-grpc/blob/def8d5d99b51330627d7b0b4f84b887de5b03034/examples/fullapp/project/plugins.sbt
/*
resolvers ++= Resolver.sonatypeOssRepos("snapshots")

addSbtPlugin("org.scalameta" % "sbt-scalafmt" % "2.4.3")

addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.7")

val zioGrpcVersion = "0.6.2"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
  "com.thesamet.scalapb" %% "compilerplugin" % "0.11.15"
)

// For Scala.js:
addSbtPlugin("org.scala-js" % "sbt-scalajs" % "1.16.0")

addSbtPlugin("org.portable-scala" % "sbt-scalajs-crossproject" % "1.2.0")

addSbtPlugin("ch.epfl.scala" % "sbt-scalajs-bundler" % "0.21.1")
*/



// FULL HISTORY: https://github.com/scalapb/zio-grpc/commits/master/examples/fullapp/project/plugins.sbt
// Jan 17, 2022
// https://github.com/scalapb/zio-grpc/blob/232b910eb919625263f7ff013d45284a979b2e77/examples/fullapp/project/plugins.sbt
/*
resolvers += Resolver.sonatypeRepo("snapshots")

addSbtPlugin("org.scalameta" % "sbt-scalafmt" % "2.4.3")

addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.6")

val zioGrpcVersion = "0.6.0-test1"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
  "com.thesamet.scalapb" %% "compilerplugin" % "0.11.7"
)

// For Scala.js:
addSbtPlugin("org.scala-js" % "sbt-scalajs" % "1.8.0")

addSbtPlugin("org.portable-scala" % "sbt-scalajs-crossproject" % "1.1.0")

addSbtPlugin("ch.epfl.scala" % "sbt-scalajs-bundler" % "0.20.0")
*/


// Jan 2020
// https://github.com/scalapb/zio-grpc/blob/9adf6b99a040024f90f4571237cbd32f66a12d20/examples/project/plugins.sbt
// Too old I think; no Zio
/*
resolvers += "Sonatype OSS Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots"

addSbtPlugin("com.thesamet" % "sbt-protoc" % "0.99.27")

libraryDependencies += "com.thesamet.scalapb" %% "compilerplugin" % "0.9.6"

libraryDependencies += "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % "0.0.0+1-3ef6658b-SNAPSHOT"
*/

// Jan 31, 2021
//https://github.com/scalapb/zio-grpc/blob/4fb360bb79e5e88dec731a733defc1a4f745a0ec/examples/project/plugins.sbt
resolvers += Resolver.sonatypeRepo("snapshots")

addSbtPlugin("org.scalameta" % "sbt-scalafmt" % "2.4.2")

addSbtPlugin("com.thesamet" % "sbt-protoc" % "1.0.0-RC2")

val zioGrpcVersion = "0.4.2"

libraryDependencies ++= Seq(
  "com.thesamet.scalapb.zio-grpc" %% "zio-grpc-codegen" % zioGrpcVersion,
    "com.thesamet.scalapb" %% "compilerplugin" % "0.10.11"
    )

    // For Scala.js:
    addSbtPlugin("org.scala-js" % "sbt-scalajs" % "1.4.0")

    addSbtPlugin("org.portable-scala" % "sbt-scalajs-crossproject" % "1.0.0")

    addSbtPlugin("ch.epfl.scala" % "sbt-scalajs-bundler" % "0.20.0")
