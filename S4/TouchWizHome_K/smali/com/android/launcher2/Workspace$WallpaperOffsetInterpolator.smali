.class Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field mFinalHorizontalWallpaperOffset:F

.field mFinalVerticalWallpaperOffset:F

.field mHorizontalCatchupConstant:F

.field mHorizontalWallpaperOffset:F

.field mIsMovingFast:Z

.field mLastWallpaperOffsetUpdateTime:J

.field mOverrideHorizontalCatchupConstant:Z

.field mVerticalCatchupConstant:F

.field mVerticalWallpaperOffset:F

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 4

    .prologue
    const v3, 0x3eb33333    # 0.35f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 1096
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 1087
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 1088
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1089
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    .line 1093
    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 1094
    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 1097
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1098
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 1099
    return-void

    :cond_0
    move v0, v2

    .line 1097
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1098
    goto :goto_1
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 22

    .prologue
    .line 1114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    .line 1116
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 1117
    const/16 v18, 0x0

    .line 1172
    :goto_0
    return v18

    .line 1119
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/Workspace;->mDisplayWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/Workspace;->mDisplayHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/4 v10, 0x1

    .line 1121
    .local v10, "isLandscape":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1122
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    move-wide/from16 v18, v0

    sub-long v14, v6, v18

    .line 1123
    .local v14, "timeSinceLastUpdate":J
    const-wide/16 v18, 0x21

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 1124
    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 1127
    .local v17, "xdiff":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    .line 1128
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 1132
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1133
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 1142
    .local v5, "fractionToCatchUpIn1MsHorizontal":F
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 1144
    .local v8, "fractionToCatchUpIn1MsVertical":F
    const/high16 v18, 0x42040000    # 33.0f

    div-float v5, v5, v18

    .line 1145
    const/high16 v18, 0x42040000    # 33.0f

    div-float v8, v8, v18

    .line 1147
    const v4, 0x3727c5ac    # 1.0E-5f

    .line 1148
    .local v4, "UPDATE_THRESHOLD":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 1149
    .local v9, "hOffsetDelta":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v16, v18, v19

    .line 1150
    .local v16, "vOffsetDelta":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3727c5ac    # 1.0E-5f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3727c5ac    # 1.0E-5f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    const/4 v11, 0x1

    .line 1153
    .local v11, "jumpToFinalValue":Z
    :goto_3
    if-eqz v11, :cond_9

    .line 1154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1171
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    .line 1172
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1119
    .end local v4    # "UPDATE_THRESHOLD":F
    .end local v5    # "fractionToCatchUpIn1MsHorizontal":F
    .end local v6    # "currentTime":J
    .end local v8    # "fractionToCatchUpIn1MsVertical":F
    .end local v9    # "hOffsetDelta":F
    .end local v10    # "isLandscape":Z
    .end local v11    # "jumpToFinalValue":Z
    .end local v14    # "timeSinceLastUpdate":J
    .end local v16    # "vOffsetDelta":F
    .end local v17    # "xdiff":F
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1134
    .restart local v6    # "currentTime":J
    .restart local v10    # "isLandscape":Z
    .restart local v14    # "timeSinceLastUpdate":J
    .restart local v17    # "xdiff":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSnapState:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1135
    const v5, 0x3e99999a    # 0.3f

    .restart local v5    # "fractionToCatchUpIn1MsHorizontal":F
    goto :goto_2

    .line 1136
    .end local v5    # "fractionToCatchUpIn1MsHorizontal":F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1137
    if-eqz v10, :cond_5

    const/high16 v5, 0x3f000000    # 0.5f

    .restart local v5    # "fractionToCatchUpIn1MsHorizontal":F
    :goto_5
    goto/16 :goto_2

    .end local v5    # "fractionToCatchUpIn1MsHorizontal":F
    :cond_5
    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_5

    .line 1140
    :cond_6
    if-eqz v10, :cond_7

    const v5, 0x3e8a3d71    # 0.27f

    .restart local v5    # "fractionToCatchUpIn1MsHorizontal":F
    :goto_6
    goto/16 :goto_2

    .end local v5    # "fractionToCatchUpIn1MsHorizontal":F
    :cond_7
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_6

    .line 1150
    .restart local v4    # "UPDATE_THRESHOLD":F
    .restart local v5    # "fractionToCatchUpIn1MsHorizontal":F
    .restart local v8    # "fractionToCatchUpIn1MsVertical":F
    .restart local v9    # "hOffsetDelta":F
    .restart local v16    # "vOffsetDelta":F
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1157
    .restart local v11    # "jumpToFinalValue":Z
    :cond_9
    const/high16 v18, 0x3f800000    # 1.0f

    long-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1159
    .local v13, "percentToCatchUpVertical":F
    const/high16 v18, 0x3f800000    # 1.0f

    long-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1161
    .local v12, "percentToCatchUpHorizontal":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    mul-float v19, v12, v9

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v18, v0

    mul-float v19, v13, v16

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    goto :goto_4
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    return v0
.end method

.method public getFinalY()F
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1204
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1205
    return-void
.end method

.method public setFinalX(FLjava/lang/String;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "who"    # Ljava/lang/String;

    .prologue
    .line 1192
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 1196
    return-void
.end method

.method public setFinalY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 1199
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 1200
    return-void
.end method

.method public setHorizontalCatchupConstant(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 1106
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 1107
    return-void
.end method

.method public setOverrideHorizontalCatchupConstant(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1102
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    .line 1103
    return-void
.end method

.method public setVerticalCatchupConstant(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 1110
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 1111
    return-void
.end method
