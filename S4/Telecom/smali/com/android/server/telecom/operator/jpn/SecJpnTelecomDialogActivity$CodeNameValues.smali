.class final Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
.super Ljava/lang/Object;
.source "SecJpnTelecomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CodeNameValues"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->code:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->name:Ljava/lang/String;

    .line 370
    return-void
.end method
