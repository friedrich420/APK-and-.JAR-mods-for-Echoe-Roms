.class Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;
.super Ljava/lang/Object;
.source "FingerprintDisclaimer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintDisclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    # getter for: Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 211
    return-void
.end method
