del coverage /F /Q
del coveragereport /F /Q
dotnet test /p:CollectCoverage=true /p:MergeWith=../coverage/lcov.json /p:CoverletOutput=../coverage/lcov /p:CoverletOutputFormat="json%%2copencover" CodeCoverageDotnetCore.sln
reportgenerator "-reports:coverage/lcov.opencover.xml" "-targetdir:coveragereport"
start coveragereport/index.htm
REM base on cmd now not work