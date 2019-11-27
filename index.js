
import { NativeModules } from 'react-native';

const { RNQunzeAnalytics } = NativeModules;

export default class Analytics{

    static previousPage = ''
    static onPageStart(pageName) {
        if(!!Analytics.previousPage){
            RNQunzeAnalytics.onPageEnd(Analytics.previousPage);
        }
        RNQunzeAnalytics.onPageStart(pageName);
        Analytics.previousPage = pageName
    }

    static onPageEnd(pageName) {
        if (!pageName) {
            pageName = Analytics.previousPage;
        }
        RNQunzeAnalytics.onPageEnd(pageName);
    }

    static event(event) {
        RNQunzeAnalytics.event(event);
    }

    static eventWithAttributes(event,attributes) {
        RNQunzeAnalytics.eventWithAttributes(event,attributes);
    }

    static setDebugMode(value) {
        RNQunzeAnalytics.setDebugMode(value);
    }

    static onProfileSignIn(userID) {
        RNQunzeAnalytics.onProfileSignIn(userID);
    }

    static onProfileSignInWithProvider(provider,userID){
        RNQunzeAnalytics.onProfileSignInWithProvider(provider,userID);
    }

    static onProfileSignOff() {
        RNQunzeAnalytics.onProfileSignOff();
    }
};
