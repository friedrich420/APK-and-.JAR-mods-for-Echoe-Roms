.class Lcom/android/settings/DisplaySettings$18;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$18;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$18;->this$0:Lcom/android/settings/DisplaySettings;

    # invokes: Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1200(Lcom/android/settings/DisplaySettings;)V

    .line 2036
    return-void
.end method
