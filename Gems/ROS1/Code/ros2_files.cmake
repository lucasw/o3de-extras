# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT

set(FILES
        ../Assets/Passes/PipelineRenderToTextureROSColor.pass
        ../Assets/Passes/PipelineRenderToTextureROSDepth.pass
        ../Assets/Passes/PipelineROSColor.pass
        ../Assets/Passes/PipelineROSDepth.pass
        ../Assets/Passes/ROSPassTemplates.azasset
        Source/Camera/CameraConstants.h
        Source/Camera/CameraPublishers.cpp
        Source/Camera/CameraPublishers.h
        Source/Camera/CameraSensor.cpp
        Source/Camera/CameraSensor.h
        Source/Camera/CameraSensorDescription.cpp
        Source/Camera/CameraSensorDescription.h
        Source/Camera/CameraSensorConfiguration.cpp
        Source/Camera/CameraSensorConfiguration.h
        Source/Camera/ROS2CameraSensorComponent.cpp
        Source/Camera/ROS2CameraSensorComponent.h
        Source/Camera/ROS2CameraSystemComponent.cpp
        Source/Camera/ROS2CameraSystemComponent.h
        Source/Camera/PostProcessing/ROS2ImageEncodingConversionComponent.cpp
        Source/Camera/PostProcessing/ROS2ImageEncodingConversionComponent.h
        Source/Camera/CameraUtilities.cpp
        Source/Camera/CameraUtilities.h
        Source/Clock/PhysicallyStableClock.cpp
        Source/Clock/SimulationClock.cpp
        Source/Communication/QoS.cpp
        Source/Communication/PublisherConfiguration.cpp
        Source/Communication/TopicConfiguration.cpp
        Source/ContactSensor/ROS2ContactSensorComponent.cpp
        Source/ContactSensor/ROS2ContactSensorComponent.h
        Source/Frame/NamespaceConfiguration.cpp
        Source/Frame/ROS2FrameComponent.cpp
        Source/Frame/ROS2FrameConfiguration.cpp
        Source/Frame/ROS2Transform.cpp
        Source/Georeference/GeoreferenceStructures.cpp
        Source/Georeference/GeoreferenceLevelComponent.cpp
        Source/Georeference/GeoreferenceLevelComponent.h
        # Source/Gripper/GripperActionServer.cpp
        # Source/Gripper/GripperActionServer.h
        # Source/Gripper/GripperActionServerComponent.cpp
        # Source/Gripper/GripperActionServerComponent.h
        # Source/Gripper/VacuumGripperComponent.h
        # Source/Gripper/VacuumGripperComponent.cpp
        # Source/Gripper/FingerGripperComponent.h
        # Source/Gripper/FingerGripperComponent.cpp
        Source/Georeference/GNSSFormatConversions.cpp
        Source/Georeference/GNSSFormatConversions.h
        Source/GNSS/ROS2GNSSSensorComponent.cpp
        Source/GNSS/ROS2GNSSSensorComponent.h
        Source/Imu/ImuSensorConfiguration.cpp
        Source/Imu/ImuSensorConfiguration.h
        Source/Imu/ROS2ImuSensorComponent.cpp
        Source/Imu/ROS2ImuSensorComponent.h
        Source/Lidar/LidarRaycaster.cpp
        Source/Lidar/LidarRaycaster.h
        Source/Lidar/LidarRegistrarSystemComponent.cpp
        Source/Lidar/LidarRegistrarSystemComponent.h
        Source/Lidar/LidarSensorConfiguration.cpp
        Source/Lidar/LidarSensorConfiguration.h
        Source/Lidar/LidarSystem.cpp
        Source/Lidar/LidarSystem.h
        Source/Lidar/LidarTemplate.cpp
        Source/Lidar/LidarTemplate.h
        Source/Lidar/LidarTemplateUtils.cpp
        Source/Lidar/LidarTemplateUtils.h
        Source/Lidar/LidarCore.cpp
        Source/Lidar/LidarCore.h
        Source/Lidar/ROS2Lidar2DSensorComponent.cpp
        Source/Lidar/ROS2Lidar2DSensorComponent.h
        Source/Lidar/ROS2LidarSensorComponent.cpp
        Source/Lidar/ROS2LidarSensorComponent.h
        Source/Manipulation/Controllers/JointsArticulationControllerComponent.cpp
        Source/Manipulation/Controllers/JointsArticulationControllerComponent.h
        Source/Manipulation/Controllers/JointsPIDControllerComponent.cpp
        Source/Manipulation/Controllers/JointsPIDControllerComponent.h
        Source/Manipulation/JointInfo.cpp
        Source/Manipulation/JointStatePublisher.cpp
        Source/Manipulation/JointStatePublisher.h
        Source/Manipulation/JointPositionsSubscriptionHandler.cpp
        Source/Manipulation/JointPositionsSubscriptionHandler.h
        Source/Manipulation/JointsPositionsComponent.cpp
        Source/Manipulation/JointsPositionsComponent.h
        Source/Manipulation/JointsManipulationComponent.cpp
        Source/Manipulation/JointsManipulationComponent.h
        Source/Manipulation/JointsTrajectoryComponent.cpp
        Source/Manipulation/JointsTrajectoryComponent.h
        Source/Manipulation/FollowJointTrajectoryActionServer.cpp
        Source/Manipulation/FollowJointTrajectoryActionServer.h
        Source/Manipulation/ManipulationUtils.h
        Source/Manipulation/ManipulationUtils.cpp
        Source/Manipulation/MotorizedJoints/JointMotorControllerComponent.cpp
        Source/Manipulation/MotorizedJoints/JointMotorControllerConfiguration.cpp
        Source/Manipulation/MotorizedJoints/ManualMotorControllerComponent.cpp
        Source/Manipulation/MotorizedJoints/PidMotorControllerComponent.cpp
        Source/Odometry/ROS2OdometrySensorComponent.cpp
        Source/Odometry/ROS2OdometrySensorComponent.h
        Source/Odometry/ROS2WheelOdometry.cpp
        Source/Odometry/ROS2WheelOdometry.h
        Source/Odometry/ROS2OdometryCovariance.cpp
        Source/Odometry/ROS2OdometryCovariance.h
        Source/RobotControl/Ackermann/AckermannSubscriptionHandler.cpp
        Source/RobotControl/Ackermann/AckermannSubscriptionHandler.h
        Source/RobotControl/ControlConfiguration.cpp
        Source/RobotControl/Controllers/AckermannController/AckermannControlComponent.cpp
        Source/RobotControl/Controllers/AckermannController/AckermannControlComponent.h
        Source/RobotControl/Controllers/RigidBodyController/RigidBodyTwistControlComponent.cpp
        Source/RobotControl/Controllers/RigidBodyController/RigidBodyTwistControlComponent.h
        Source/RobotControl/Controllers/SkidSteeringController/SkidSteeringControlComponent.cpp
        Source/RobotControl/Controllers/SkidSteeringController/SkidSteeringControlComponent.h
        Source/RobotControl/ROS2RobotControlComponent.cpp
        Source/RobotControl/ROS2RobotControlComponent.h
        Source/RobotControl/Twist/TwistSubscriptionHandler.cpp
        # Source/RobotImporter/ROS2RobotImporterSystemComponent.cpp
        # Source/RobotImporter/ROS2RobotImporterSystemComponent.h
        Source/ROS2ModuleInterface.h
        Source/Sensor/Events/PhysicsBasedSource.cpp
        Source/Sensor/Events/TickBasedSource.cpp
        Source/Sensor/SensorConfiguration.cpp
        Source/SimulationUtils/FollowingCameraConfiguration.cpp
        Source/SimulationUtils/FollowingCameraConfiguration.h
        Source/SimulationUtils/FollowingCameraComponent.cpp
        Source/SimulationUtils/FollowingCameraComponent.h
        Source/Spawner/ROS2SpawnerComponent.cpp
        Source/Spawner/ROS2SpawnerComponent.h
        Source/Spawner/ROS2SpawnPointComponent.cpp
        Source/Spawner/ROS2SpawnPointComponent.h
        Source/Spawner/ROS2SpawnerComponentController.cpp
        Source/Spawner/ROS2SpawnerComponentController.h
        Source/Spawner/ROS2SpawnPointComponentController.cpp
        Source/Spawner/ROS2SpawnPointComponentController.h
        Source/SystemComponents/ROS2SystemComponent.cpp
        Source/SystemComponents/ROS2SystemComponent.h
        Source/Utilities/ArticulationsUtilities.cpp
        Source/Utilities/ArticulationsUtilities.h
        Source/Utilities/JointUtilities.cpp
        Source/Utilities/JointUtilities.h
        Source/Utilities/Controllers/PidConfiguration.cpp
        Source/Utilities/ROS2Conversions.cpp
        Source/Utilities/ROS2Names.cpp
        Source/VehicleDynamics/AxleConfiguration.cpp
        Source/VehicleDynamics/AxleConfiguration.h
        Source/VehicleDynamics/DriveModel.cpp
        Source/VehicleDynamics/DriveModel.h
        Source/VehicleDynamics/DriveModels/AckermannDriveModel.cpp
        Source/VehicleDynamics/DriveModels/AckermannDriveModel.h
        Source/VehicleDynamics/DriveModels/SkidSteeringDriveModel.cpp
        Source/VehicleDynamics/DriveModels/SkidSteeringDriveModel.h
        Source/VehicleDynamics/ManualControlEventHandler.h
        Source/VehicleDynamics/Utilities.cpp
        Source/VehicleDynamics/Utilities.h
        Source/VehicleDynamics/VehicleConfiguration.cpp
        Source/VehicleDynamics/VehicleConfiguration.h
        Source/VehicleDynamics/VehicleInputs.cpp
        Source/VehicleDynamics/VehicleInputs.h
        Source/VehicleDynamics/VehicleModelComponent.cpp
        Source/VehicleDynamics/VehicleModelComponent.h
        Source/VehicleDynamics/ModelComponents/AckermannModelComponent.cpp
        Source/VehicleDynamics/ModelComponents/AckermannModelComponent.h
        Source/VehicleDynamics/ModelComponents/SkidSteeringModelComponent.cpp
        Source/VehicleDynamics/ModelComponents/SkidSteeringModelComponent.h
        Source/VehicleDynamics/VehicleModelLimits.cpp
        Source/VehicleDynamics/VehicleModelLimits.h
        Source/VehicleDynamics/ModelLimits/AckermannModelLimits.cpp
        Source/VehicleDynamics/ModelLimits/AckermannModelLimits.h
        Source/VehicleDynamics/ModelLimits/SkidSteeringModelLimits.cpp
        Source/VehicleDynamics/ModelLimits/SkidSteeringModelLimits.h
        Source/VehicleDynamics/WheelControllerComponent.cpp
        Source/VehicleDynamics/WheelControllerComponent.h
        Source/VehicleDynamics/WheelDynamicsData.h
        )
