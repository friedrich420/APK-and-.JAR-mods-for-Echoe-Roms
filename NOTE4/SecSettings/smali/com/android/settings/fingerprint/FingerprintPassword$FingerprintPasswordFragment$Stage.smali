.class public final enum Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f0a02ad

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v2, 0x7f0a1ae7

    invoke-direct {v0, v1, v4, v2, v7}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 214
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v1, "NeedToConfirm"

    const v2, 0x7f0a0881

    const v3, 0x7f0a02b9

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 217
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v1, "ConfirmWrong"

    const v2, 0x7f0a0884

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    .line 225
    iput p4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method
