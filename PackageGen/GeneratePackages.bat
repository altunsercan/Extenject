rd Packages /s /q

xcopy /I ..\UnityProject\Assets\Plugins\Zenject /E Packages\Extenject\Runtime  /EXCLUDE:ExcludeCore.txt
xcopy /I ..\UnityProject\Assets\Plugins\Zenject\Source\Editor /E Packages\Extenject\Editor 
copy package.core.json Packages\Extenject\package.json

xcopy /I ..\UnityProject\Assets\Plugins\Zenject\OptionalExtras\TestFramework  /E Packages\Extenject-TestFramework\Tests /EXCLUDE:ExcludeTestFramework.txt
copy package.testframework.json Packages\Extenject-TestFramework\package.json

xcopy /I ..\UnityProject\Assets\Plugins\Zenject\OptionalExtras\Signals /E Packages\Extenject-Signals\Runtime
copy package.signals.json Packages\Extenject-Signals\package.json
copy Zenject-Signals.asmdef Packages\Extenject-Signals\Runtime\Zenject-Signals.asmdef