# Jitsi Meet iOS SDK, with system picture in picture

The [Jitsi Meet iOS SDK](https://github.com/jitsi/jitsi-meet-ios-sdk-releases) 13.3.1, built from
[jitsi-meet](https://github.com/jitsi/jitsi-meet) at `0b5dd6dd872a5a7301ab2f2cb9cdb42ad5f2b4df` with the patches in
[patches/](patches): when the app goes to the background during a call, iOS's
own picture in picture window shows the participant on stage. Turn it on with the
feature flag `ios.system-pip.enabled`; without it the SDK behaves as Jitsi's.

Use it as a Swift package, as Jitsi's (product `JitsiMeetSDK`), pinned to an
exact version: this is 13.3.1-tt.1. Each release carries the two frameworks as
zips; Package.swift points at them with their checksums. Published versions
never change.

Apache-2.0: see [LICENSE](LICENSE) and [NOTICE](NOTICE).
