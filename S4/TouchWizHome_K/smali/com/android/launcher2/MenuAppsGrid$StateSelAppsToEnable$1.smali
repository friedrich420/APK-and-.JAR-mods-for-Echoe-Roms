.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;)V
    .locals 0

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2187
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    .line 2188
    return-void
.end method
