.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
.super Ljava/lang/Object;
.source "VastVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/vast/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImpressionItem"
.end annotation


# instance fields
.field public durationHalf:I

.field public durationQuarter:I

.field public durationThreeQuarter:I

.field public durationTotal:I

.field public isComplete:Z

.field public isHalf:Z

.field public isQuarter:Z

.field public isShowClose:Z

.field public isStart:Z

.field public isThreeQuarter:Z

.field final synthetic this$0:Lcom/mdotm/android/vast/VastVideoView;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/vast/VastVideoView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    .line 205
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    .line 206
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 209
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setImpressionTime(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    return-object v0
.end method

.method private sendImpression(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, eventUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event Impression"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;-><init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method private setImpressionTime(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    move-result-object v0

    iput p1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared Duration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->impression:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    move-result-object v1

    iget v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    .line 217
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    .line 218
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quarter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "half position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "three qurter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setTimer()V

    .line 225
    :cond_0
    return-void
.end method

.method private setTimer()V
    .locals 8

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView;->access$1(Lcom/mdotm/android/vast/VastVideoView;Ljava/util/Timer;)V

    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, delay:I
    const/16 v7, 0x3e8

    .line 232
    .local v7, period:I
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->videoTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$2(Lcom/mdotm/android/vast/VastVideoView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;-><init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)V

    .line 270
    int-to-long v2, v6

    int-to-long v4, v7

    .line 232
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 271
    return-void
.end method
