.class public final enum Lcom/android/launcher2/FolderIconHelper$LocFolder;
.super Ljava/lang/Enum;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/FolderIconHelper$LocFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/FolderIconHelper$LocFolder;

.field public static final enum LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

.field public static final enum NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

.field public static final enum RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

.field public static final enum TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    const-string v1, "NOMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    const-string v1, "LEFT_FOLDER_INMENU"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    const-string v1, "RIGHT_FOLDER_INMENU"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    const-string v1, "TOP_FOLDER_INHOME"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/FolderIconHelper$LocFolder;

    sget-object v1, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->$VALUES:[Lcom/android/launcher2/FolderIconHelper$LocFolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/FolderIconHelper$LocFolder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/FolderIconHelper$LocFolder;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/launcher2/FolderIconHelper$LocFolder;->$VALUES:[Lcom/android/launcher2/FolderIconHelper$LocFolder;

    invoke-virtual {v0}, [Lcom/android/launcher2/FolderIconHelper$LocFolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/FolderIconHelper$LocFolder;

    return-object v0
.end method
