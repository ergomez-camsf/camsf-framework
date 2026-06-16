application TourismGuideApp

awareObject Tourist category User
contextFeature Location value GPS relevance High
contextFeature Connectivity value Network relevance Medium
sensor GPS sensorType GPS execution Active configuration Active
service NearbyPlaces serviceType Google_Maps

rule ShowNearbyAttractions
when Tourist.Location is available
execute NearbyPlaces
