.class Lcom/android/settings/SettingsActivity$HeaderAdapter$3;
.super Landroid/database/ContentObserver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 5065
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 5068
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;

    # getter for: Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->access$2200(Lcom/android/settings/SettingsActivity$HeaderAdapter;)Lcom/android/settings/smartbonding/SmartBondingEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState()V

    .line 5069
    return-void
.end method
