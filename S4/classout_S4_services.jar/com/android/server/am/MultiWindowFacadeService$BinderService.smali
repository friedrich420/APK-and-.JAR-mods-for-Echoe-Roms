.class final Lcom/android/server/am/MultiWindowFacadeService$BinderService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowFacadeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .registers 2

    .prologue
    .line 744
    iput-object p1, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/MultiWindowFacadeService;
    .param p2, "x1"    # Lcom/android/server/am/MultiWindowFacadeService$1;

    .prologue
    .line 744
    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/MultiWindowFacadeService;)V

    return-void
.end method

.method private getTopTaskIdByZone(I)I
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 791
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    # invokes: Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I
    invoke-static {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->access$000(Lcom/android/server/am/MultiWindowFacadeService;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 890
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->addTab(Landroid/os/IBinder;)V

    .line 891
    return-void
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 924
    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 5
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 838
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    return v0
.end method

.method public changeTaskToFull(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 834
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToFull(I)V

    .line 835
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 4
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 782
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->exchangeTopTaskToZone(II)Z

    move-result v0

    return v0
.end method

.method public getArrangeState()I
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getArrangeState()I

    move-result v0

    return v0
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 2

    .prologue
    .line 842
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getAvailableMultiInstanceCnt()I

    move-result v0

    return v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 754
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getEnabledFeaturesFlags()J
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getEnabledFeaturesFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedZone()I

    move-result v0

    return v0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 795
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 762
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskSize(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRecentTaskSize(II)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt()I
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningPenWindowCnt()I

    move-result v0

    return v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .registers 4
    .param p1, "maxNum"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitMaxWeight()F
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMaxWeight()F

    move-result v0

    return v0
.end method

.method public getSplitMinWeight()F
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMinWeight()F

    move-result v0

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 770
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 906
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 774
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 882
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 786
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->initMultiWindowApplicationInfo()V

    .line 875
    return-void
.end method

.method public isEnableMakePenWindow()Z
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v0

    return v0
.end method

.method public minimizeAll()V
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeAll()V

    .line 879
    return-void
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 746
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeWindow(Landroid/os/IBinder;)V

    .line 747
    return-void
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 854
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 855
    return-void
.end method

.method public needToExposureTitleBarMenu()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needToExposureTitleBarMenu()Z

    move-result v0

    return v0
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 949
    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 954
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 918
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->removeAllTasks(Landroid/os/IBinder;I)V

    .line 919
    return-void
.end method

.method public removeTab(I)Z
    .registers 3
    .param p1, "stackId"    # I

    .prologue
    .line 894
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeTab(I)Z

    move-result v0

    return v0
.end method

.method public requestSplitPreview(Z)V
    .registers 3
    .param p1, "enablePreview"    # Z

    .prologue
    .line 821
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->requestSplitPreview(Z)V

    .line 822
    return-void
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 914
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 915
    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 750
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 751
    return-void
.end method

.method public setFocusAppByZone(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 846
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusAppByZone(I)V

    .line 847
    return-void
.end method

.method public setFocusedStack(IZ)V
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 902
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusedStack(IZ)V

    .line 903
    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 758
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 759
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 815
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowTrayOpenState(Z)V

    .line 816
    return-void
.end method

.method public setPreviewFullAppZone(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 826
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setPreviewFullAppZone(I)V

    .line 827
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 766
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 767
    return-void
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 910
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    .line 911
    return-void
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 959
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 850
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 851
    return-void
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 886
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 887
    return-void
.end method

.method public updateSettingThroughSystemProcess(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 968
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateSettingThroughSystemProcess(Ljava/lang/String;I)V

    .line 969
    return-void
.end method
