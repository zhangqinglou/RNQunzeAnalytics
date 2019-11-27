
# react-native-qunze-analytics

## Getting started

`$ npm install react-native-qunze-analytics --save`

### Mostly automatic installation

`$ react-native link react-native-qunze-analytics`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-qunze-analytics` and add `RNQunzeAnalytics.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNQunzeAnalytics.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.qunze.analytics.RNQunzeAnalyticsPackage;` to the imports at the top of the file
  - Add `new RNQunzeAnalyticsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-qunze-analytics'
  	project(':react-native-qunze-analytics').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-qunze-analytics/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-qunze-analytics')
  	```


## Usage
```javascript
import RNQunzeAnalytics from 'react-native-qunze-analytics';

// TODO: What to do with the module?
RNQunzeAnalytics;
```
  