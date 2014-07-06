.class public final Lcom/chukong/cocosplay/client/CocosAlarm;
.super Ljava/lang/Object;
.source "CocosAlarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endTheGameDemo(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "gameActivity"
    .parameter "second"
    .parameter "tittle"
    .parameter "content"

    .prologue
    .line 11
    new-instance v0, Lcom/chukong/cocosplay/client/CocosAlarm$1;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/chukong/cocosplay/client/CocosAlarm$1;-><init>(JJLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/chukong/cocosplay/client/CocosAlarm$1;->start()Landroid/os/CountDownTimer;

    .line 36
    return-void
.end method
