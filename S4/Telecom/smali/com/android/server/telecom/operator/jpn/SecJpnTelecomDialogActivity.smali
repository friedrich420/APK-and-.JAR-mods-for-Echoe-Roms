.class public Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;
.super Landroid/app/Activity;
.source "SecJpnTelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private handle:Landroid/net/Uri;

.field private intent:Landroid/content/Intent;

.field private isDocomoNetwork:Z

.field private prefixCode:Ljava/lang/String;

.field private prefixName:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private uriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isDocomoNetwork:Z

    .line 89
    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    .line 90
    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    .line 349
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 183
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    .line 220
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-string v1, "is_incoming_call"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Sending broadcast as user to CallReceiver- SecJpnTelecomDialogActivity"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    iput-object v4, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    .line 242
    return-void

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call intent is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v5, 0x4

    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->useDocomoNetwork(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isDocomoNetwork:Z

    .line 103
    if-eqz v0, :cond_7

    .line 104
    const-string v2, "parcelable_call_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    .line 108
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->handle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type_of_dialog"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type : %d, scheme : %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->scheme:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 131
    :goto_0
    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bundle or intent or dialog type is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    .line 135
    :cond_0
    return-void

    .line 116
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isDocomoNetwork:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;-><init>()V

    const-string v2, "network_service_settings"

    invoke-virtual {p0, v2, v5}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "international_name"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "international_access_index"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WORLD CALL"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "international_access_code"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "international_access_index"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "009130010"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternInterPrefix:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800ac

    invoke-virtual {p0, v5}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "International dial assist"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-boolean v5, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isDocomoNetwork:Z

    if-eqz v5, :cond_5

    const-string v5, "title"

    const v6, 0x7f0800a8

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {p0, v6, v9}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "title"

    const v6, 0x7f0800aa

    invoke-virtual {p0, v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v5, "num"

    iget-object v6, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "num"

    iget-object v5, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f040002

    new-array v5, v11, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v5, v7

    const-string v2, "num"

    aput-object v2, v5, v1

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;-><init>(Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v8, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v7

    .line 117
    goto/16 :goto_0

    .line 116
    :cond_2
    new-instance v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;-><init>()V

    const-string v2, "network_service_settings"

    invoke-virtual {p0, v2, v5}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "international_dialing_assist_country_name"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "international_dialing_assist_country_code_index"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v7

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "international_dialing_assist_country_code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "international_dialing_assist_country_code_index"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v3, v3, v7

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->setCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternCountryCode:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->uriString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const v6, 0x7f0800ac

    invoke-virtual {p0, v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "39"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixCode:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v5, "title"

    const v6, 0x7f0800a7

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->prefixName:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {p0, v6, v9}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "title"

    const v6, 0x7f0800a9

    invoke-virtual {p0, v6}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 124
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
    .end packed-switch

    .line 116
    :array_0
    .array-data 4
        0x7f0e0006
        0x7f0e0007
    .end array-data
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->dialog:Landroid/app/Dialog;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFinishing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    return-void
.end method
