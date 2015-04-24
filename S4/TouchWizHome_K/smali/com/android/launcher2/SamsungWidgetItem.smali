.class Lcom/android/launcher2/SamsungWidgetItem;
.super Lcom/android/launcher2/HomeItem;
.source "SamsungWidgetItem.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final EXTRA_SAMSUNGWIDGET_ID:Ljava/lang/String; = "exta_samsung_widget_id"

.field public static final SAMSUNG_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "SamsungWidgetItem"

.field static final WIDGET_STATE_NONE:I = 0x0

.field static final WIDGET_STATE_PAUSED:I = 0x2

.field static final WIDGET_STATE_RESUMED:I = 0x1


# instance fields
.field intent:Landroid/content/Intent;

.field mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

.field mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

.field state:I

.field widgetId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SamsungWidgetItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->state:I

    .line 68
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;J)Lcom/android/launcher2/SamsungWidgetItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .param p2, "widgetId"    # J

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher2/SamsungWidgetItem;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;JLcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;JLcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .param p2, "widgetId"    # J
    .param p4, "widgetInfo"    # Lcom/android/launcher2/SamsungWidgetItem;

    .prologue
    .line 181
    sget-boolean v21, Lcom/android/launcher2/SamsungWidgetItem;->DEBUGGABLE:Z

    if-eqz v21, :cond_0

    const-string v21, "SamsungWidgetItem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "makeSamsungWidget()  item: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  widgtInfo: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  widgetId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v10, 0x0

    .line 184
    .local v10, "info":Lcom/android/launcher2/SamsungWidgetItem;
    if-nez p4, :cond_9

    .line 185
    new-instance v10, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v10    # "info":Lcom/android/launcher2/SamsungWidgetItem;
    invoke-direct {v10}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    .line 186
    .restart local v10    # "info":Lcom/android/launcher2/SamsungWidgetItem;
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    .line 192
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 193
    .local v6, "contentView":Landroid/view/View;
    const/16 v16, 0x0

    .line 194
    .local v16, "orientation":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/ActivityGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v9, p0

    .line 195
    check-cast v9, Landroid/app/ActivityGroup;

    .line 196
    .local v9, "group":Landroid/app/ActivityGroup;
    invoke-virtual {v9}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v15

    .line 198
    .local v15, "manager":Landroid/app/LocalActivityManager;
    const/4 v4, 0x0

    .line 200
    .local v4, "c":Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 207
    :goto_1
    if-eqz v4, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Launcher;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 210
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 212
    .local v5, "config":Landroid/content/res/Configuration;
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 213
    sget-boolean v21, Lcom/android/launcher2/SamsungWidgetItem;->DEBUGGABLE:Z

    if-eqz v21, :cond_2

    const-string v21, "SamsungWidgetItem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Widget: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " orientation "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " --> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2
    move/from16 v0, v16

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 215
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_3
    :goto_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v21, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v21, "exta_samsung_widget_id"

    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const/16 v18, 0x0

    .line 229
    .local v18, "w":Landroid/view/Window;
    const/16 v17, 0x0

    .line 230
    .local v17, "skList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v12, 0x0

    .line 231
    .local v12, "isContainedInSkipList":Z
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Launcher;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 233
    :try_start_2
    move-object/from16 v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Workspace;->getWidgetRotateSkipList()Ljava/util/ArrayList;

    move-result-object v17

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v21

    if-eqz v21, :cond_4

    .line 235
    const/4 v12, 0x1

    .line 239
    :cond_4
    :goto_3
    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v19

    .line 241
    .local v19, "widgetActivity":Landroid/app/Activity;
    if-eqz v12, :cond_b

    .line 242
    if-nez v19, :cond_a

    .line 243
    :try_start_3
    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v11}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v18

    .line 258
    :cond_5
    :goto_4
    if-eqz v18, :cond_d

    const v21, 0x1020002

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 259
    .local v14, "mainView":Landroid/view/View;
    :goto_5
    if-eqz v14, :cond_e

    move-object/from16 v21, v14

    check-cast v21, Landroid/view/ViewGroup;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 261
    :goto_6
    if-eqz v6, :cond_f

    move-object/from16 v21, v14

    .line 262
    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    :cond_6
    :goto_7
    if-nez v18, :cond_13

    .line 278
    const-string v21, "SamsungWidgetItem"

    const-string v22, "w is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_7
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/launcher2/SamsungWidgetItem;->setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v4    # "c":Landroid/content/Context;
    .end local v9    # "group":Landroid/app/ActivityGroup;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isContainedInSkipList":Z
    .end local v14    # "mainView":Landroid/view/View;
    .end local v15    # "manager":Landroid/app/LocalActivityManager;
    .end local v17    # "skList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v18    # "w":Landroid/view/Window;
    .end local v19    # "widgetActivity":Landroid/app/Activity;
    :cond_8
    new-instance v20, Lcom/android/launcher2/SamsungWidgetView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/SamsungWidgetView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v20, "widgetView":Lcom/android/launcher2/SamsungWidgetView;
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v21, 0x11

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 295
    if-eqz v6, :cond_15

    .line 296
    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v13}, Lcom/android/launcher2/SamsungWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_9
    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    .line 303
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    .line 305
    return-object v10

    .line 188
    .end local v6    # "contentView":Landroid/view/View;
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "orientation":I
    .end local v20    # "widgetView":Lcom/android/launcher2/SamsungWidgetView;
    :cond_9
    move-object/from16 v10, p4

    .line 189
    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-nez v21, :cond_1

    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    goto/16 :goto_0

    .line 201
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v6    # "contentView":Landroid/view/View;
    .restart local v9    # "group":Landroid/app/ActivityGroup;
    .restart local v15    # "manager":Landroid/app/LocalActivityManager;
    .restart local v16    # "orientation":I
    :catch_0
    move-exception v8

    .line 202
    .local v8, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 218
    .end local v8    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    .line 219
    .local v8, "e1":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 245
    .end local v8    # "e1":Ljava/lang/Exception;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "isContainedInSkipList":Z
    .restart local v17    # "skList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v18    # "w":Landroid/view/Window;
    .restart local v19    # "widgetActivity":Landroid/app/Activity;
    :cond_a
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    goto/16 :goto_4

    .line 247
    :cond_b
    if-eqz v19, :cond_c

    .line 248
    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 249
    :cond_c
    iget-wide v0, v10, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v11}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v18

    goto/16 :goto_4

    .line 251
    :catch_2
    move-exception v7

    .line 252
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/launcher2/SamsungWidgetItem;->DEBUGGABLE:Z

    if-eqz v21, :cond_5

    .line 253
    const-string v21, "SamsungWidgetItem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed startActivity("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 258
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 259
    .restart local v14    # "mainView":Landroid/view/View;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 263
    :cond_f
    if-eqz v12, :cond_6

    .line 264
    if-eqz v19, :cond_12

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    if-eqz v14, :cond_10

    move-object/from16 v21, v14

    check-cast v21, Landroid/view/ViewGroup;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 267
    :goto_a
    if-eqz v6, :cond_11

    move-object/from16 v21, v14

    .line 268
    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 266
    :cond_10
    const/4 v6, 0x0

    goto :goto_a

    .line 270
    :cond_11
    const-string v21, "SamsungWidgetItem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[makeSamsungWidget] failed get widget view("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 272
    :cond_12
    const-string v21, "SamsungWidgetItem"

    const-string v22, "[makeSamsungWidget] activity is still null."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 279
    :cond_13
    if-nez v14, :cond_14

    .line 280
    const-string v21, "SamsungWidgetItem"

    const-string v22, "mainView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 281
    :cond_14
    if-nez v6, :cond_7

    .line 282
    const-string v21, "SamsungWidgetItem"

    const-string v22, "contentView is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 298
    .end local v4    # "c":Landroid/content/Context;
    .end local v9    # "group":Landroid/app/ActivityGroup;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isContainedInSkipList":Z
    .end local v14    # "mainView":Landroid/view/View;
    .end local v15    # "manager":Landroid/app/LocalActivityManager;
    .end local v17    # "skList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v18    # "w":Landroid/view/Window;
    .end local v19    # "widgetActivity":Landroid/app/Activity;
    .restart local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v20    # "widgetView":Lcom/android/launcher2/SamsungWidgetView;
    :cond_15
    sget-boolean v21, Lcom/android/launcher2/SamsungWidgetItem;->DEBUGGABLE:Z

    if-eqz v21, :cond_16

    const-string v21, "SamsungWidgetItem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Adding widget error view for widget  item: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  widgtInfo: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  widgetId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_16
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/SamsungWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/launcher2/SamsungWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 236
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "widgetView":Lcom/android/launcher2/SamsungWidgetView;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v9    # "group":Landroid/app/ActivityGroup;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "isContainedInSkipList":Z
    .restart local v15    # "manager":Landroid/app/LocalActivityManager;
    .restart local v17    # "skList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v18    # "w":Landroid/view/Window;
    :catch_3
    move-exception v21

    goto/16 :goto_3
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iget v7, p0, Lcom/android/launcher2/SamsungWidgetItem;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    instance-of v7, p1, Landroid/app/ActivityGroup;

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 103
    check-cast v0, Landroid/app/ActivityGroup;

    .line 104
    .local v0, "ag":Landroid/app/ActivityGroup;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 106
    .local v1, "app":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 109
    .local v2, "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 110
    .local v6, "widgetObserver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 111
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IWidgetObserver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    aget-object v6, v2, v4

    .line 110
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    :cond_3
    if-eqz v6, :cond_0

    .line 118
    :try_start_0
    const-string v7, "fireOnPause"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 119
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 120
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/launcher2/SamsungWidgetItem;->state:I

    .line 121
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 123
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 139
    iget v7, p0, Lcom/android/launcher2/SamsungWidgetItem;->state:I

    if-ne v7, v8, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    instance-of v7, p1, Landroid/app/ActivityGroup;

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Landroid/app/ActivityGroup;

    .line 142
    .local v0, "ag":Landroid/app/ActivityGroup;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 144
    .local v1, "app":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 147
    .local v2, "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 148
    .local v6, "widgetObserver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 149
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IWidgetObserver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    aget-object v6, v2, v4

    .line 148
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_3
    if-eqz v6, :cond_0

    .line 156
    :try_start_0
    const-string v7, "fireOnResume"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 157
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 158
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/launcher2/SamsungWidgetItem;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 161
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 170
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 320
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->mItem:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    .line 329
    :cond_0
    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "appWidgetId"

    iget-wide v2, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    return-void

    .line 83
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "themeName"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    .line 312
    return-void
.end method
