.class Lcom/android/settings/PenAirViewEnabler$1;
.super Landroid/database/ContentObserver;
.source "PenAirViewEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenAirViewEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler$1;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$1;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    .line 73
    return-void
.end method
