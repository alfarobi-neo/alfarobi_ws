#ifndef ALFAROBI_H
#define ALFAROBI_H

namespace robotis_op
{

class Alfarobi
{
public:
    enum Soccer_Half
    {
        First_Half  = 1,
        Second_Half = 2,
    };

    enum Robot_Zone
    {
        Zone1      = 1,
        Zone2      = 2,
        Zone3      = 3,
        Zone4      = 4,
    };

    enum Robot_Status
    {
        Waited               = 0,
        TrackingAndFollowing = 1,
        ReadyToKick          = 2,
        ReadyToCeremony      = 3,
        ReadyToGetup         = 4,
    };

    enum Button
    {
        L1 = 1,
        L2 = 2,
        L3 = 3,
        L4 = 4,
        R1 = 5,
        R2 = 6,
        R3 = 7,
        R4 = 8,
        NoData = 999,
    };

    Alfarobi()
    {
    }

    virtual ~Alfarobi()
    {
    }

    virtual void setModuleEnable()
    {
    }

    virtual void setModuleDisable()
    {
    }

protected:
    bool enable_;
};

} /* namespace robotis_op */

#endif
