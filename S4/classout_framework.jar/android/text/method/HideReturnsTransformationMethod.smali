.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "HideReturnsTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-array v0, v3, [C

    const/16 v1, 0xd

    aput-char v1, v0, v2

    sput-object v0, ORIGINAL:[C

    .line 27
    new-array v0, v3, [C

    const v1, 0xfeff

    aput-char v1, v0, v2

    sput-object v0, REPLACEMENT:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .registers 1

    .prologue
    .line 44
    sget-object v0, sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_7

    .line 45
    sget-object v0, sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 48
    :goto_6
    return-object v0

    .line 47
    :cond_7
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 48
    sget-object v0, sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    goto :goto_6
.end method


# virtual methods
.method protected getOriginal()[C
    .registers 2

    .prologue
    .line 33
    sget-object v0, ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .registers 2

    .prologue
    .line 40
    sget-object v0, REPLACEMENT:[C

    return-object v0
.end method
