.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# static fields
.field private static isKnoxB2CResetCase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 131
    .local v1, "modIntent":Landroid/content/Intent;
    const-string v3, ":settings:show_fragment"

    const-class v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 134
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 136
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 137
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 138
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 141
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 157
    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    sget-boolean v1, Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 165
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.B2C_PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    const-string v1, "isresetsuccess"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 173
    .end local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
