.class final Lcom/android/launcher2/FestivalPageManager$2;
.super Landroid/util/SparseArray;
.source "FestivalPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FestivalPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 136
    const/4 v0, 0x1

    const-string v1, "fw_new_year"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 137
    const/4 v0, 0x2

    const-string v1, "fw_valentines_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 138
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 139
    const/4 v0, 0x4

    const-string v1, "fw_may_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 140
    const/4 v0, 0x6

    const-string v1, "fw_childrens_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 141
    const/16 v0, 0x9

    const-string v1, "fw_teachers_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 142
    const/16 v0, 0xa

    const-string v1, "fw_national_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 143
    const/16 v0, 0x11

    const-string v1, "fw_double_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 144
    const/16 v0, 0xb

    const-string v1, "fw_christmas_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 145
    const/16 v0, 0xc

    const-string v1, "fw_chinese_newyear"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 146
    const/16 v0, 0xd

    const-string v1, "fw_lantern_festival"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 147
    const/16 v0, 0xe

    const-string v1, "fw_dragonboat_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 148
    const/16 v0, 0xf

    const-string v1, "fw_tanabata_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 149
    const/16 v0, 0x10

    const-string v1, "fw_midautumn_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 150
    const/16 v0, 0x82

    const-string v1, "fw_tombsweeping_day"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 151
    const/16 v0, 0x3e6

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 152
    const/16 v0, 0x3e7

    const-string v1, "fw_my_birthday"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FestivalPageManager$2;->append(ILjava/lang/Object;)V

    .line 153
    return-void
.end method
