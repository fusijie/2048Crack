.class Lcom/chukong/cocosplay/client/CocosAlarm$1$1;
.super Ljava/lang/Object;
.source "CocosAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chukong/cocosplay/client/CocosAlarm$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chukong/cocosplay/client/CocosAlarm$1;


# direct methods
.method constructor <init>(Lcom/chukong/cocosplay/client/CocosAlarm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chukong/cocosplay/client/CocosAlarm$1$1;->this$1:Lcom/chukong/cocosplay/client/CocosAlarm$1;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 24
    return-void
.end method
