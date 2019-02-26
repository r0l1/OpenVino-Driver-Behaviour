# Create variables for all models used by the tutorials to make 
#  it easier to reference them with short names

# check for variable set by setupvars.sh in the SDK, need it to find models
: ${InferenceEngine_DIR:?"Must source the setupvars.sh in the SDK to set InferenceEngine_DIR"}

if (echo $INTEL_CVSDK_DIR | grep -q "\.5\."); then
        export INTEL_CVSDK_VER=5
else
        export INTEL_CVSDK_VER=4
fi

modelDir=$InferenceEngine_DIR/../../intel_models

# Vehicle and License Plates Detection Model
modName=vehicle-license-plate-detection-barrier-0106
export mVLP16=$modelDir/$modName/FP16/$modName.xml
export mVLP32=$modelDir/$modName/FP32/$modName.xml

# Vehicle-only Detection Model used with the batch size exercise
modName=vehicle-detection-adas-0002
export mVDR16=$modelDir/$modName/FP16/$modName.xml
export mVDR32=$modelDir/$modName/FP32/$modName.xml

# Vehicle Attributes Detection Model
modName=vehicle-attributes-recognition-barrier-0039
export mVA16=$modelDir/$modName/FP16/$modName.xml
export mVA32=$modelDir/$modName/FP32/$modName.xml

modName=person-vehicle-bike-detection-crossroad-0078
export vehicle216=$modelDir/$modName/FP16/$modName.xml
export vehicle232=$modelDir/$modName/FP32/$modName.xml

modName=pedestrian-and-vehicle-detector-adas-0001
export pv16=$modelDir/$modName/FP16/$modName.xml
export pv32=$modelDir/$modName/FP32/$modName.xml

modName=person-detection-retail-0013
export person116=$modelDir/$modName/FP16/$modName.xml
export person132=$modelDir/$modName/FP32/$modName.xml

modName=pedestrian-detection-adas-0002
export person216=$modelDir/$modName/FP16/$modName.xml
export person232=$modelDir/$modName/FP32/$modName.xml

modName=frozen_yolo_v3
export yolo16=../data/$modName.xml

# Face detection
modName=face-detection-adas-0001
export face116=$modelDir/$modName/FP16/$modName.xml
export face132=$modelDir/$modName/FP32/$modName.xml

modName=face-detection-retail-0004
export face216=$modelDir/$modName/FP16/$modName.xml
export face232=$modelDir/$modName/FP32/$modName.xml

modName=facial-landmarks-35-adas-0001
export lm116=$modelDir/$modName/FP16/$modName.xml
export lm132=$modelDir/$modName/FP32/$modName.xml

modName=landmarks-regression-retail-0009
export lm216=$modelDir/$modName/FP16/$modName.xml
export lm232=$modelDir/$modName/FP32/$modName.xml

modName=person-detection-action-recognition-classroom-0003
export pda16=$modelDir/$modName/FP16/$modName.xml
export pda32=$modelDir/$modName/FP32/$modName.xml

modName=person-reidentification-retail-0079
export pr116=$modelDir/$modName/FP16/$modName.xml
export pr132=$modelDir/$modName/FP32/$modName.xml

modName=emotions-recognition-retail-0003
export em16=$modelDir/$modName/FP16/$modName.xml
export em32=$modelDir/$modName/FP32/$modName.xml

modName=head-pose-estimation-adas-0001
export hp16=$modelDir/$modName/FP16/$modName.xml
export hp32=$modelDir/$modName/FP32/$modName.xml

modName=face-reidentification-retail-0095
export reid16=$modelDir/$modName/FP16/$modName.xml
export reid32=$modelDir/$modName/FP32/$modName.xml
