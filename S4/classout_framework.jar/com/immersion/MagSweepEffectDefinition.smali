.class public Lcom/immersion/MagSweepEffectDefinition;
.super Ljava/lang/Object;
.source "MagSweepEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nAttackLevel:I

.field private nAttackTime:I

.field private nDuration:I

.field private nFadeLevel:I

.field private nFadeTime:I

.field private nMagnitude:I

.field private nStyle:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 9
    .param p1, "nDuration"    # I
    .param p2, "nMagnitude"    # I
    .param p3, "nStyle"    # I
    .param p4, "nAttackTime"    # I
    .param p5, "nAttackLevel"    # I
    .param p6, "nFadeTime"    # I
    .param p7, "nFadeLevel"    # I
    .param p8, "nActuatorIndex"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, setDuration(I)V

    .line 99
    invoke-virtual {p0, p2}, setMagnitude(I)V

    .line 100
    invoke-virtual {p0, p3}, setStyle(I)V

    .line 101
    invoke-virtual {p0, p4}, setAttackTime(I)V

    .line 102
    invoke-virtual {p0, p5}, setAttackLevel(I)V

    .line 103
    invoke-virtual {p0, p6}, setFadeTime(I)V

    .line 104
    invoke-virtual {p0, p7}, setFadeLevel(I)V

    .line 105
    invoke-virtual {p0, p8}, setActuatorIndex(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, nActuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, nAttackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, nAttackTime:I

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, nDuration:I

    return v0
.end method

.method public getFadeLevel()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, nFadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, nFadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, nMagnitude:I

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, nStyle:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .registers 2
    .param p1, "nActuatorIndex"    # I

    .prologue
    .line 343
    iput p1, p0, nActuatorIndex:I

    .line 344
    return-void
.end method

.method public setAttackLevel(I)V
    .registers 2
    .param p1, "nAttackLevel"    # I

    .prologue
    .line 251
    iput p1, p0, nAttackLevel:I

    .line 252
    return-void
.end method

.method public setAttackTime(I)V
    .registers 2
    .param p1, "nAttackTime"    # I

    .prologue
    .line 220
    iput p1, p0, nAttackTime:I

    .line 221
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "nDuration"    # I

    .prologue
    .line 123
    iput p1, p0, nDuration:I

    .line 124
    return-void
.end method

.method public setFadeLevel(I)V
    .registers 2
    .param p1, "nFadeLevel"    # I

    .prologue
    .line 313
    iput p1, p0, nFadeLevel:I

    .line 314
    return-void
.end method

.method public setFadeTime(I)V
    .registers 2
    .param p1, "nFadeTime"    # I

    .prologue
    .line 282
    iput p1, p0, nFadeTime:I

    .line 283
    return-void
.end method

.method public setMagnitude(I)V
    .registers 2
    .param p1, "nMagnitude"    # I

    .prologue
    .line 157
    iput p1, p0, nMagnitude:I

    .line 158
    return-void
.end method

.method public setStyle(I)V
    .registers 2
    .param p1, "nStyle"    # I

    .prologue
    .line 188
    iput p1, p0, nStyle:I

    .line 189
    return-void
.end method
