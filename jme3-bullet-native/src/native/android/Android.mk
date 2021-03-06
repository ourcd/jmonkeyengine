# /*
# Bullet Continuous Collision Detection and Physics Library for Android NDK
# Copyright (c) 2006-2009 Noritsuna Imamura  <a href="http://www.siprop.org/" rel="nofollow">http://www.siprop.org/</a>
#
# This software is provided 'as-is', without any express or implied warranty.
# In no event will the authors be held liable for any damages arising from the use of this software.
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it freely,
# subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
# */
LOCAL_PATH:= $(call my-dir)
JME3_PATH:=
BULLET_PATH:=
 
include $(CLEAR_VARS)
 
LOCAL_MODULE    := bulletjme
LOCAL_C_INCLUDES := $(BULLET_PATH)/\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch\
    $(BULLET_PATH)/BulletCollision/CollisionShapes\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver\
    $(BULLET_PATH)/BulletDynamics/Dynamics\
    $(BULLET_PATH)/BulletDynamics/Vehicle\
    $(BULLET_PATH)/LinearMath\
    $(BULLET_PATH)/BulletCollision\
    $(BULLET_PATH)/BulletDynamics\
    $(BULLET_PATH)/BulletMultiThreaded\
    $(BULLET_PATH)/BulletSoftBody\
    $(BULLET_PATH)/ibmsdk\
    $(BULLET_PATH)/LinearMath\
    $(BULLET_PATH)/MiniCL\
    $(BULLET_PATH)/vectormath\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch\
    $(BULLET_PATH)/BulletCollision/CollisionShapes\
    $(BULLET_PATH)/BulletCollision/Gimpact\
    $(BULLET_PATH)/BulletCollision/ibmsdk\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision\
    $(BULLET_PATH)/BulletDynamics/Character\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver\
    $(BULLET_PATH)/BulletDynamics/Dynamics\
    $(BULLET_PATH)/BulletDynamics/ibmsdk\
    $(BULLET_PATH)/BulletDynamics/Vehicle\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers\
    $(BULLET_PATH)/BulletMultiThreaded/out\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask\
    $(BULLET_PATH)/BulletMultiThreaded/SpuSampleTask\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/CPU\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/DX11\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/DX11/HLSL\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/AMD\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/Apple\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/MiniCL\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/NVidia\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC\
    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC10\
    $(BULLET_PATH)/LinearMath/ibmsdk\
    $(BULLET_PATH)/MiniCL/MiniCLTask\
    $(BULLET_PATH)/vectormath/scalar\
    $(BULLET_PATH)/vectormath/sse
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%)
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -lm -llog
 
LOCAL_SRC_FILES := $(JME3_PATH)/com_jme3_bullet_collision_PhysicsCollisionEvent.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_PhysicsCollisionObject.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_BoxCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_CapsuleCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_CollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_CompoundCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_ConeCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_CylinderCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_GImpactCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_HeightfieldCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_HullCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_MeshCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_PlaneCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_SimplexCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_collision_shapes_SphereCollisionShape.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_ConeJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_HingeJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_motors_RotationalLimitMotor.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_motors_TranslationalLimitMotor.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_PhysicsJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_Point2PointJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_SixDofJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_SixDofSpringJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_joints_SliderJoint.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_infos_RigidBodyMotionState.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_PhysicsCharacter.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_PhysicsGhostObject.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_PhysicsRigidBody.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_PhysicsVehicle.cpp\
    $(JME3_PATH)/com_jme3_bullet_objects_VehicleWheel.cpp\
    $(JME3_PATH)/com_jme3_bullet_PhysicsSpace.cpp\
    $(JME3_PATH)/com_jme3_bullet_util_DebugShapeFactory.cpp\
    $(JME3_PATH)/com_jme3_bullet_util_NativeMeshUtil.cpp\
    $(JME3_PATH)/jmeBulletUtil.cpp\
    $(JME3_PATH)/jmeClasses.cpp\
    $(JME3_PATH)/jmeMotionState.cpp\
    $(JME3_PATH)/jmePhysicsSpace.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btDbvt.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btDispatcher.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp\
    $(BULLET_PATH)/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btCollisionObject.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btCollisionWorld.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btGhostObject.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btManifoldResult.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/btUnionFind.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btBox2dShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btBoxShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btCapsuleShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btCollisionShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btCompoundShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConcaveShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConeShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvex2dShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexHullShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexInternalShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btCylinderShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btEmptyShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btMultiSphereShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btOptimizedBvh.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btShapeHull.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btSphereShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTetrahedronShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleBuffer.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleCallback.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleMesh.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp\
    $(BULLET_PATH)/BulletCollision/CollisionShapes/btUniformScalingShape.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btContactProcessing.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btGenericPoolAllocator.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btGImpactBvh.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btGImpactShape.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/btTriangleShapeEx.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/gim_box_set.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/gim_contact.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/gim_memory.cpp\
    $(BULLET_PATH)/BulletCollision/Gimpact/gim_tri_collision.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp\
    $(BULLET_PATH)/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp\
    $(BULLET_PATH)/BulletDynamics/Character/btKinematicCharacterController.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btContactConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp\
    $(BULLET_PATH)/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp\
    $(BULLET_PATH)/BulletDynamics/Dynamics/btRigidBody.cpp\
    $(BULLET_PATH)/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp\
    $(BULLET_PATH)/BulletDynamics/Dynamics/Bullet-C-API.cpp\
    $(BULLET_PATH)/BulletDynamics/Vehicle/btRaycastVehicle.cpp\
    $(BULLET_PATH)/BulletDynamics/Vehicle/btWheelInfo.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/btGpu3DGridBroadphase.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/btParallelConstraintSolver.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/btThreadSupportInterface.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/PosixThreadSupport.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SequentialThreadSupport.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuCollisionObjectWrapper.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuCollisionTaskProcess.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuContactManifoldCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuFakeDma.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuGatheringCollisionDispatcher.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuLibspe2Support.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuSampleTaskProcess.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/Win32ThreadSupport.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/boxBoxDistance.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuCollisionShapes.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuContactResult.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuMinkowskiPenetrationDepthSolver.cpp\
    $(BULLET_PATH)/BulletMultiThreaded/SpuSampleTask/SpuSampleTask.cpp\
    $(BULLET_PATH)/BulletSoftBody/btDefaultSoftBodySolver.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftBody.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftBodyHelpers.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftRigidDynamicsWorld.cpp\
    $(BULLET_PATH)/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp\
    $(BULLET_PATH)/LinearMath/btAlignedAllocator.cpp\
    $(BULLET_PATH)/LinearMath/btConvexHull.cpp\
    $(BULLET_PATH)/LinearMath/btConvexHullComputer.cpp\
    $(BULLET_PATH)/LinearMath/btGeometryUtil.cpp\
    $(BULLET_PATH)/LinearMath/btQuickprof.cpp\
    $(BULLET_PATH)/LinearMath/btSerializer.cpp\
    $(BULLET_PATH)/LinearMath/btPolarDecomposition.cpp\
    $(BULLET_PATH)/MiniCL/MiniCL.cpp\
    $(BULLET_PATH)/MiniCL/MiniCLTaskScheduler.cpp\
    $(BULLET_PATH)/MiniCL/MiniCLTask/MiniCLTask.cpp
#    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/CPU/btSoftBodySolver_CPU.cpp\
#    $(BULLET_PATH)/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/MiniCL/MiniCLTaskWrap.cpp\
 
include $(BUILD_SHARED_LIBRARY)
