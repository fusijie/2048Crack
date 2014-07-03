.class final Lcom/nextpeer/android/bp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation runtime Lcom/a/a/a/ab;
        a = "properties"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation runtime Lcom/a/a/a/ab;
        a = "display"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "type"
    .end annotation
.end field

.field private transient d:Ljava/lang/String;

.field private transient e:Ljava/lang/String;

.field private transient f:Ljava/lang/String;

.field private transient g:Landroid/content/Context;

.field private transient h:Landroid/os/Bundle;

.field private transient i:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method static synthetic a(Lcom/nextpeer/android/bp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/nextpeer/android/bp;
    .locals 2

    new-instance v0, Lcom/a/a/ak;

    invoke-direct {v0}, Lcom/a/a/ak;-><init>()V

    const-class v1, Lcom/nextpeer/android/bp;

    invoke-virtual {v0, p0, v1}, Lcom/a/a/ak;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/bp;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/bp;Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nextpeer/android/bp;->b:Ljava/util/Map;

    const-string v2, "title"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nextpeer/android/R$string;->np__application_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nextpeer/android/aq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/bp;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/bp;->b:Ljava/util/Map;

    const-string v2, "text"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nextpeer/android/aq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/bp;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/bp;->b:Ljava/util/Map;

    const-string v2, "ticker"

    iget-object v3, p0, Lcom/nextpeer/android/bp;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nextpeer/android/aq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/bp;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    invoke-static {}, Lcom/nextpeer/android/bo;->a()[I

    move-result-object v1

    iget v2, p0, Lcom/nextpeer/android/bp;->c:I

    invoke-static {v2}, Lcom/nextpeer/android/bw;->a(I)Lcom/nextpeer/android/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/bw;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown push message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service - failed to create notification from unknown message type - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/nextpeer/android/bs;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bs;-><init>(Lcom/nextpeer/android/bp;)V

    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/nextpeer/android/bp;->h:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/nextpeer/android/bp;->h:Landroid/os/Bundle;

    const-string v3, "type"

    iget v4, p0, Lcom/nextpeer/android/bp;->c:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nextpeer/android/bp;->h:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/bm;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_push_notification:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/bp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/bp;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/bp;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/bp;->i:Landroid/support/v4/app/NotificationCompat$Builder;

    sget v1, Lcom/nextpeer/android/R$raw;->np__incoming_push_message:I

    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/au;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_2
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/bp;->i:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    const-class v2, Lcom/nextpeer/android/NextpeerBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Extra_Message_Bundle"

    iget-object v2, p0, Lcom/nextpeer/android/bp;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/bp;->i:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/nextpeer/android/bt;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bt;-><init>(Lcom/nextpeer/android/bp;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/nextpeer/android/br;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/br;-><init>(Lcom/nextpeer/android/bp;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Lcom/nextpeer/android/bu;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bu;-><init>(Lcom/nextpeer/android/bp;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Lcom/nextpeer/android/bv;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bv;-><init>(Lcom/nextpeer/android/bp;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/bp;->i:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/nextpeer/android/bp;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bp;->i:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/bp;->g:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/nextpeer/android/bq;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bq;-><init>(Lcom/nextpeer/android/bp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/bp;->b:Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
