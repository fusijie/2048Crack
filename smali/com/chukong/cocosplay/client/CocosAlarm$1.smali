.class Lcom/chukong/cocosplay/client/CocosAlarm$1;
.super Landroid/os/CountDownTimer;
.source "CocosAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chukong/cocosplay/client/CocosAlarm;->endTheGameDemo(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$gameActivity:Landroid/app/Activity;

.field private final synthetic val$tittle:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p5, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$gameActivity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$tittle:Ljava/lang/String;

    iput-object p7, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$content:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$gameActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$tittle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 19
    const-string v2, "\u7ed3\u675f\u8bd5\u73a9"

    new-instance v3, Lcom/chukong/cocosplay/client/CocosAlarm$1$1;

    invoke-direct {v3, p0}, Lcom/chukong/cocosplay/client/CocosAlarm$1$1;-><init>(Lcom/chukong/cocosplay/client/CocosAlarm$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 26
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 27
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 33
    return-void
.end method
