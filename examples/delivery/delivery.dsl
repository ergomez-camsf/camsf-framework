application DeliveryTrackingApp

awareObject Driver category User
awareObject Package category MobileObject
contextFeature DriverLocation value GPS relevance High
contextFeature PackageStatus value GenericObject relevance High
contextFeature Connectivity value Network relevance Medium
sensor GPS sensorType GPS execution Active configuration Active
sensor IoTSensor sensorType ProgramMonitory execution Active configuration Active
service TrackingMap serviceType Google_Maps
service Notification serviceType Firebase

rule UpdatePackageTracking
when Driver.DriverLocation changes
execute TrackingMap

rule NotifyDelay
when Package.PackageStatus equals Delayed
execute Notification
