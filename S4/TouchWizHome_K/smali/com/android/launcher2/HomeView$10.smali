.class Lcom/android/launcher2/HomeView$10;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/android/launcher2/AppWidgetBinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$item:Lcom/android/launcher2/HomeWidgetItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .locals 3

    .prologue
    .line 1506
    const-string v0, "Launcher.HomeView"

    const-string v1, "Problem binding widget. This should only happen when installed outside of /system/app and user declined authorization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Not installed with permissions needed for binding widgets and authoization declined"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1511
    return-void
.end method

.method public onBindSuccess(I)V
    .locals 12
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .line 1460
    .local v8, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v0, :cond_0

    if-nez v8, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    new-instance v1, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v0, 0x1

    invoke-direct {v1, v8, p1, v0}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    .line 1467
    .local v1, "widgetInfo":Lcom/android/launcher2/HomeWidgetItem;
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget-wide v2, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeWidgetItem;->container:J

    .line 1468
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 1469
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 1470
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 1471
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 1472
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 1473
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    iput-boolean v0, v1, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    .line 1475
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeWidgetItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1481
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->val$item:Lcom/android/launcher2/HomeWidgetItem;

    iget v11, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 1483
    .local v11, "screen":I
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mRestoring:Z
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$500(Lcom/android/launcher2/HomeView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1487
    iget-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1488
    iget-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v0

    iget-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v9

    .line 1490
    .local v9, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v4, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v5, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 1493
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 1495
    .local v10, "page":Lcom/android/launcher2/CellLayout;
    iget-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 1498
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1500
    iget-object v0, p0, Lcom/android/launcher2/HomeView$10;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v2, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v2, v8}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_0
.end method
