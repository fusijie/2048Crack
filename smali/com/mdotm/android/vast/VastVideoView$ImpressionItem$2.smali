.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

.field private final synthetic val$eventUrl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 290
    .end local v0           #i:I
    :goto_1
    return-void

    .line 282
    .restart local v0       #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Event URL"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 284
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    #getter for: Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;
    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v3

    #getter for: Lcom/mdotm/android/vast/VastVideoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)Landroid/content/Context;

    move-result-object v3

    .line 283
    invoke-virtual {v2, v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0           #i:I
    :cond_1
    const-string v1, "Event URL null"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
