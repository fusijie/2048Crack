.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;
.super Ljava/util/TimerTask;
.source "VastVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    .line 232
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastVideoView;->getCurrentPosition()I

    move-result v0

    .line 236
    .local v0, position:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video play start :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    .line 241
    :cond_0
    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 243
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->videoListener:Lcom/mdotm/android/listener/InterstitialVideoListener;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$3(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/InterstitialVideoListener;->showCloseButton()V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    if-lt v0, v1, :cond_3

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    if-nez v1, :cond_3

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "quarter position crossed ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    .line 250
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v2

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v2

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->firstQuartile:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 269
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    if-nez v1, :cond_4

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "half position crossed :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    .line 257
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v2

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v2

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->midPoint:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    if-lt v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    if-nez v1, :cond_2

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "three qurter position crossed ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    .line 265
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v2

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v2

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->thirdQuartile:Ljava/util/ArrayList;

    #calls: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
