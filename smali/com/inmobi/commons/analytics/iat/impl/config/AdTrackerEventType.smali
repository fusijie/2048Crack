.class public final enum Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;
.super Ljava/lang/Enum;
.source "AdTrackerEventType.java"

# interfaces
.implements Lcom/inmobi/commons/metric/EventType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;",
        ">;",
        "Lcom/inmobi/commons/metric/EventType;"
    }
.end annotation


# static fields
.field public static final enum GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

.field public static final enum GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

.field public static final enum GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

.field private static final synthetic b:[Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const-string v1, "GOAL_SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    .line 7
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const-string v1, "GOAL_FAILURE"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    .line 8
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const-string v1, "GOAL_DUMPED"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->b:[Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->a:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->b:[Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->a:I

    return v0
.end method
