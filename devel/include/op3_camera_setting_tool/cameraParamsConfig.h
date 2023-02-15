//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the op3_camera_setting_tool package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __op3_camera_setting_tool__CAMERAPARAMSCONFIG_H__
#define __op3_camera_setting_tool__CAMERAPARAMSCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace op3_camera_setting_tool
{
  class cameraParamsConfigStatics;

  class cameraParamsConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(cameraParamsConfig &config, const cameraParamsConfig &max, const cameraParamsConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const cameraParamsConfig &config1, const cameraParamsConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, cameraParamsConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const cameraParamsConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, cameraParamsConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const cameraParamsConfig &config) const = 0;
      virtual void getValue(const cameraParamsConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T cameraParamsConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (cameraParamsConfig::* field);

      virtual void clamp(cameraParamsConfig &config, const cameraParamsConfig &max, const cameraParamsConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const cameraParamsConfig &config1, const cameraParamsConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, cameraParamsConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const cameraParamsConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, cameraParamsConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const cameraParamsConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const cameraParamsConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, cameraParamsConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, cameraParamsConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<cameraParamsConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(cameraParamsConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("brightness"==(*_i)->name){brightness = boost::any_cast<int>(val);}
        if("contrast"==(*_i)->name){contrast = boost::any_cast<int>(val);}
        if("saturation"==(*_i)->name){saturation = boost::any_cast<int>(val);}
        if("sharpness"==(*_i)->name){sharpness = boost::any_cast<int>(val);}
        if("gain"==(*_i)->name){gain = boost::any_cast<int>(val);}
        if("focus_auto"==(*_i)->name){focus_auto = boost::any_cast<bool>(val);}
        if("focus_absolute"==(*_i)->name){focus_absolute = boost::any_cast<int>(val);}
        if("exposure_auto"==(*_i)->name){exposure_auto = boost::any_cast<int>(val);}
        if("exposure_absolute"==(*_i)->name){exposure_absolute = boost::any_cast<int>(val);}
        if("white_balance_temperature_auto"==(*_i)->name){white_balance_temperature_auto = boost::any_cast<bool>(val);}
        if("white_balance_temperature"==(*_i)->name){white_balance_temperature = boost::any_cast<int>(val);}
      }
    }

    int brightness;
int contrast;
int saturation;
int sharpness;
int gain;
bool focus_auto;
int focus_absolute;
int exposure_auto;
int exposure_absolute;
bool white_balance_temperature_auto;
int white_balance_temperature;

    bool state;
    std::string name;

    
}groups;



//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int brightness;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int contrast;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int saturation;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int sharpness;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int gain;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool focus_auto;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int focus_absolute;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int exposure_auto;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int exposure_absolute;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool white_balance_temperature_auto;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int white_balance_temperature;
//#line 228 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("cameraParamsConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const cameraParamsConfig &__max__ = __getMax__();
      const cameraParamsConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const cameraParamsConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const cameraParamsConfig &__getDefault__();
    static const cameraParamsConfig &__getMax__();
    static const cameraParamsConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const cameraParamsConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void cameraParamsConfig::ParamDescription<std::string>::clamp(cameraParamsConfig &config, const cameraParamsConfig &max, const cameraParamsConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class cameraParamsConfigStatics
  {
    friend class cameraParamsConfig;

    cameraParamsConfigStatics()
    {
cameraParamsConfig::GroupDescription<cameraParamsConfig::DEFAULT, cameraParamsConfig> Default("Default", "", 0, 0, true, &cameraParamsConfig::groups);
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.brightness = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.brightness = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.brightness = 128;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("brightness", "int", 0, "Brightness", "", &cameraParamsConfig::brightness)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("brightness", "int", 0, "Brightness", "", &cameraParamsConfig::brightness)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.contrast = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.contrast = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.contrast = 128;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("contrast", "int", 0, "Contrast", "", &cameraParamsConfig::contrast)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("contrast", "int", 0, "Contrast", "", &cameraParamsConfig::contrast)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.saturation = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.saturation = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.saturation = 128;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("saturation", "int", 0, "Saturation", "", &cameraParamsConfig::saturation)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("saturation", "int", 0, "Saturation", "", &cameraParamsConfig::saturation)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.sharpness = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.sharpness = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.sharpness = 128;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("sharpness", "int", 0, "Sharpness", "", &cameraParamsConfig::sharpness)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("sharpness", "int", 0, "Sharpness", "", &cameraParamsConfig::sharpness)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.gain = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.gain = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.gain = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("gain", "int", 0, "Gain", "", &cameraParamsConfig::gain)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("gain", "int", 0, "Gain", "", &cameraParamsConfig::gain)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.focus_auto = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.focus_auto = 1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.focus_auto = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<bool>("focus_auto", "bool", 0, "Auto focus", "", &cameraParamsConfig::focus_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<bool>("focus_auto", "bool", 0, "Auto focus", "", &cameraParamsConfig::focus_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.focus_absolute = -1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.focus_absolute = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.focus_absolute = -1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("focus_absolute", "int", 0, "Absolute Focus", "", &cameraParamsConfig::focus_absolute)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("focus_absolute", "int", 0, "Absolute Focus", "", &cameraParamsConfig::focus_absolute)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.exposure_auto = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.exposure_auto = 3;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.exposure_auto = 3;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("exposure_auto", "int", 0, "Auto Exposure", "{'enum_description': 'An enum to set size', 'enum': [{'srcline': 16, 'description': 'Exposure Auto', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'auto'}, {'srcline': 17, 'description': 'Exposure Manual', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'manual'}, {'srcline': 18, 'description': 'Exposure : Shutter priority', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'shutter_priority'}, {'srcline': 19, 'description': 'Exposure : Aperture priority', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'aperture_priority'}]}", &cameraParamsConfig::exposure_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("exposure_auto", "int", 0, "Auto Exposure", "{'enum_description': 'An enum to set size', 'enum': [{'srcline': 16, 'description': 'Exposure Auto', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'auto'}, {'srcline': 17, 'description': 'Exposure Manual', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'manual'}, {'srcline': 18, 'description': 'Exposure : Shutter priority', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'shutter_priority'}, {'srcline': 19, 'description': 'Exposure : Aperture priority', 'srcfile': '/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'aperture_priority'}]}", &cameraParamsConfig::exposure_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.exposure_absolute = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.exposure_absolute = 255;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.exposure_absolute = 80;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("exposure_absolute", "int", 0, "Absolute Exposure", "", &cameraParamsConfig::exposure_absolute)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("exposure_absolute", "int", 0, "Absolute Exposure", "", &cameraParamsConfig::exposure_absolute)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.white_balance_temperature_auto = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.white_balance_temperature_auto = 1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.white_balance_temperature_auto = 1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<bool>("white_balance_temperature_auto", "bool", 0, "Auto White Balance", "", &cameraParamsConfig::white_balance_temperature_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<bool>("white_balance_temperature_auto", "bool", 0, "Auto White Balance", "", &cameraParamsConfig::white_balance_temperature_auto)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.white_balance_temperature = 2000;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.white_balance_temperature = 6500;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.white_balance_temperature = 4000;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("white_balance_temperature", "int", 0, "White Balance Temperature", "", &cameraParamsConfig::white_balance_temperature)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(cameraParamsConfig::AbstractParamDescriptionConstPtr(new cameraParamsConfig::ParamDescription<int>("white_balance_temperature", "int", 0, "White Balance Temperature", "", &cameraParamsConfig::white_balance_temperature)));
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(cameraParamsConfig::AbstractGroupDescriptionConstPtr(new cameraParamsConfig::GroupDescription<cameraParamsConfig::DEFAULT, cameraParamsConfig>(Default)));
//#line 366 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<cameraParamsConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<cameraParamsConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<cameraParamsConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    cameraParamsConfig __max__;
    cameraParamsConfig __min__;
    cameraParamsConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const cameraParamsConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static cameraParamsConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &cameraParamsConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const cameraParamsConfig &cameraParamsConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const cameraParamsConfig &cameraParamsConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const cameraParamsConfig &cameraParamsConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<cameraParamsConfig::AbstractParamDescriptionConstPtr> &cameraParamsConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<cameraParamsConfig::AbstractGroupDescriptionConstPtr> &cameraParamsConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const cameraParamsConfigStatics *cameraParamsConfig::__get_statics__()
  {
    const static cameraParamsConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = cameraParamsConfigStatics::get_instance();

    return statics;
  }

//#line 16 "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg"
      const int cameraParams_auto = 0;
//#line 17 "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg"
      const int cameraParams_manual = 1;
//#line 18 "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg"
      const int cameraParams_shutter_priority = 2;
//#line 19 "/home/alfarobi/alfarobi_ws/src/ALFAROBI-Tools/op3_camera_setting_tool/cfg/camera_params.cfg"
      const int cameraParams_aperture_priority = 3;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __CAMERAPARAMSRECONFIGURATOR_H__
